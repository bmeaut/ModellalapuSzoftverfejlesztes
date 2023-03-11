using Microsoft.CodeAnalysis;
using Microsoft.CodeAnalysis.CSharp;
using Microsoft.CodeAnalysis.CSharp.Syntax;
using Microsoft.CodeAnalysis.MSBuild;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataControlFlowDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            var workspace = MSBuildWorkspace.Create();
            var projectPath = @"..\..\DataControlFlowDemo.csproj";
            var project = workspace.OpenProjectAsync(projectPath).Result;
            var demoClass = project.Documents.SingleOrDefault(d => d.Name == "DemoClass.cs");

            var semanticModel = demoClass.GetSemanticModelAsync().Result;
            var syntaxTree = demoClass.GetSyntaxRootAsync().Result;

            //DataFlowAnalysis
            var dataFlowAnalyisMethod = syntaxTree
                .DescendantNodes()
                .OfType<MethodDeclarationSyntax>()
                .Single(x => x.Identifier.Text == "DataFlowAnalysis");
            
            var dataFlow = semanticModel.AnalyzeDataFlow(
                dataFlowAnalyisMethod.Body.Statements.OfType<LocalDeclarationStatementSyntax>().First(), 
                dataFlowAnalyisMethod.Body.Statements.OfType<LocalDeclarationStatementSyntax>().Last());

            foreach (var symbol in dataFlow.VariablesDeclared)
            {
                Console.WriteLine($"Variable declared: {symbol.Name}, type: {((ILocalSymbol) symbol).Type}");
                var written = dataFlow.WrittenOutside.SingleOrDefault(x => x.Name == symbol.Name);
                if (written == null)
                {
                    Console.WriteLine("Variable can be made const!");
                }
                else
                {
                    Console.WriteLine("Variable is assigned one or more times!");
                }
            }

            //ControlFlowAnalysis
            Console.WriteLine();
            var controlFlowAnalysisMethod = syntaxTree.DescendantNodes()
                .OfType<MethodDeclarationSyntax>()
                .Single(x => x.Identifier.Text == "ControlFlowAnalysis");
            var controlFlow = semanticModel.AnalyzeControlFlow(controlFlowAnalysisMethod.Body);
            foreach (var syntaxNode in controlFlow.ReturnStatements.Cast<ReturnStatementSyntax>())
            {
                var result = semanticModel.GetConstantValue(syntaxNode.Expression);
                if (result.HasValue)
                {
                    Console.WriteLine("Method can return: " + result.Value);
                }
                else
                {
                    Console.WriteLine("Method can return with non-constant value!");
                }
            }

            Console.ReadLine();
        }
    }
}
