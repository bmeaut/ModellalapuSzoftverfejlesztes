package statemachine.generator

import statemachine.model.EventHandler
import statemachine.model.JumpStatement
import statemachine.model.Machine
import statemachine.model.PrintStatement

class MachineToJavaGenerator {
	def generate(Machine machine) {
		var eventNames = machine.states.map[it.handlers.filter[it.name !== null].map[it.name]].flatten.toSet
		var initialState = machine.states.filter[it.initial].head
		if (initialState === null) initialState = machine.states.head
		'''
		package statemachines;
		
		public class «machine.name» {
			private State state«IF initialState !== null» = State.«initialState.name»«ENDIF»;
			
			«FOR eventName: eventNames»
			public void «eventName»() {
				var nextState = state;
				switch (state) {
				«FOR state: machine.states.filter[it.handlers.exists[it.name == eventName]]»
				case «state.name»:
					«var handler = state.handlers.filter[it.name == eventName].head»
					«generateStatements(handler)»
					break;
				«ENDFOR»
				default:
					throw new IllegalStateException(state.toString());
				}
				if (nextState != state) {
					switch (state) {
					«FOR state: machine.states.filter[it.exit !== null]»
					case «state.name»:
						exit«state.name»();
						break;
					«ENDFOR»
					}
					state = nextState;
					switch (nextState) {
					«FOR state: machine.states.filter[it.entry !== null]»
					case «state.name»:
						enter«state.name»();
						break;
					«ENDFOR»
					}
				}
			}
			«ENDFOR»
			
			«FOR state: machine.states»
				«val entry = state.entry»
				«IF entry !== null»
				private void enter«state.name»() {
					«generateStatements(entry)»
				}
				«ENDIF»
				«val exit = state.exit»
				«IF exit !== null»
				private void exit«state.name»() {
					«generateStatements(exit)»
				}
				«ENDIF»
			«ENDFOR»
			
			private enum State {
				«FOR state: machine.states SEPARATOR ", "»«state.name»«ENDFOR»
			}
		}
		'''
	}
	
	def generateStatements(EventHandler handler) {
		'''
		«FOR stmt: handler.statements»
		«generateStatement(stmt)»
		«ENDFOR»
		'''
	}
	
	def dispatch generateStatement(PrintStatement stmt) {
		'''
		System.out.print("«stmt.text»");
		System.out.println();
		'''
	}
	
	def dispatch generateStatement(JumpStatement stmt) {
		'''
		nextState = State.«stmt.target.name»;
		'''
	}
}