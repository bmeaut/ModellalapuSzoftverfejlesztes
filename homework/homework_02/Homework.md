# 2nd homework - Xtext

## Steps for solving the homework

1. The [initial](https://github.com/MDSDLab/mdsd-2024-xtext-hw) repo contains the result of [Preparing the projects](../../practice/practice_03/PR3-Xtext-Projects.pdf) belonging to the Xtext practice. Copy the **statemachine.dsl.parent** folder to the root of your own repo!
2. Open the projects under the **statemachine.dsl.parent** folder in Eclipse!
3. Solve the [Xtext practice](../../practice/practice_03/PR3-Xtext-Guideline.pdf) based on these projects!
4. **Extend the result of the practice based on the description below!**
5. Mark your last commit with a **hw2-xtext** tag!

## Extending the result of the practice

Extend the Xcore meta-model, the Xtext grammar and Xtend code generator in a way that the following state machine code also becomes valid:

```
machine Lamp
{
    int counter;

    initial state Off
    {
        event Flick
        {
            jump On;
        }
    }
    state On
    {
        entry
        {
            print "Turning on...";
            ++counter;
            print "Turned on ", counter, " times.";
        }
        event Flick
        {
            jump Off;
        }
        exit
        {
            print "Turning off...";
        }
    }
}

```

The extensions have the following properties:

* Inside the body of a `machine`, before the list of states, fields of type `int` can be defined! Any number of fields are allowed!
* The initial value of a field is 0.
* The value of a field can be increased by 1 using the prefix `++` operator!
* The `print` command can have multiple arguments separated by commas. An argument may be either a string literal or a reference to a field. On the output, all the arguments of a `print` statement appear concatenated in a single line.

For example, if we execute the state machine defined above using the following program:

```Java
package statemachines;

public class Program {

    public static void main(String[] args) {
        var lamp = new Lamp();
        lamp.Flick();
        lamp.Flick();
        lamp.Flick();
        lamp.Flick();
    }

}
```

Then the output must be:

```
Turning on...
Turned on 1 times.
Turning off...
Turning on...
Turned on 2 times.
Turning off...
```

## References

Useful links to solve the homework:

* The [materials](../../practice/practice_03) of the Xtext practice
* [Xcore](https://wiki.eclipse.org/Xcore)
* [Xtext](https://eclipse.dev/Xtext/documentation/301_grammarlanguage.html)
* [Xtend](https://eclipse.dev/Xtext/xtend/documentation/203_xtend_expressions.html#templates)
