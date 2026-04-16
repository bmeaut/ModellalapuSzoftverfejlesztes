# Homework 3 - ANTLR

## Steps for doing the homework

1. Copy the contents of the [initial](https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/blob/master/practice/practice_04/Practice%2004%20-%20TinyScript%20codegen%20initial%20project.zip) project to your own repo, in a newly created **TinyScript** folder!
2. Solve the task below!
3. Create a **tag** named **hw3-antlr** for the last commit!

## Task

The specification of the TinyScript language can be found in the materials of Practice 2. In Practice 4 we briefly examined the semantic analysis of TinyScript and the initial parts of the code generator. The description of the initial project is also included in the practice guide. The homework task is to finish the code generator according to the following points:
* generate the function definitions (functions with statements) in the output
    * include both the header and the statements of the function
    * create a new StringTemplate template for function definitions
* in the main function, do not generate statements from other functions
    * the initial project is intentionally incorrect, statements from other functions are generated
    * while walking the syntax tree using the visitor, keep track of whether we are inside a function or not
* comments need not be processed, they can be discarded during code generation
* work only in the *JavaGen.stg* and *TinyScriptCodeGenerator.java* files!

The sample output for the *input.tys* file can be found in *TinyScriptOutputExample.java*. The indentation does not have to be followed exactly, otherwise, the generated code should match the code below:

```
package tinyscript;

// This class is an example of Java code from the input.tys file; whitespace formatting may vary
public class TinyScriptOutputExample {
    public static int add(int a, int b) {
        return a + b;
    }

    public static void print(String s) {
    }

    public static void main(String[] args) {
        int a = 1 + 2 + 3;
        var b = a * 2;

        while (b < 15) {
            b = b + 1;
            print("b increased");
        }

        if (true) {
            add(1, 2);
        }
        else {
            print("not true");
        }

    }
}
```

### Scoring

The homework assignment in total is worth 0-2 points, a homework assignment with a minimum of 1 point is considered to be successful. 1 point can be achieved for the ANTLR assignment if the generated code follows the example and new StringTemplate template(s) have been created and used in the solution. For the [LLVM](../LLVM_HW/LLVM_EN.md) task, 1 point can also be achieved.

## References

Useful links for doing the homework:

* ANTLR practice 01 [materials](https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/tree/master/practice/practice_02)
    * Includes IntelliJ and ANTLR technical guide
* ANTLR practice 02 [materials](https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/tree/master/practice/practice_04)
    * Includes StringTemplate technical guide
* [ANTLR](https://www.antlr.org/) ([Documentation](https://github.com/antlr/antlr4/blob/master/doc/index.md))
* [StringTemplate](https://www.stringtemplate.org/) ([Documentation](https://github.com/antlr/stringtemplate4/blob/master/doc/index.md))