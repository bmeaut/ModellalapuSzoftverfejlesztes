# Homework 3 - LLVM

## Steps for doing the homework

1. Solve the task below!
2. Put the short reasoning in the file `LLVM\LLVM_HW.md` in the repo (also create the file)!
3. Create a **tag** named **hw3-llvm** for the last commit!

## Task

The task is to optimize a given LLVM IR code snippet using the LLVM `opt` tool.
The numbered code snippets in the [Feladatok](./Feladatok) folder are the inputs of the task. The input to be used is determined by the first character of your Neptun code, as follows:
* [A-L] -> [in(20)](./Feladatok/in%20(20).ll)
* [M-Z] -> [in(21)](./Feladatok/in%20(21).ll)

## Solving the task

Your goal is to find the LLVM optimization pass that yields the best possible result when applied to the code snippet you received as part of your assignment.

We prepared a [Compiler Explorer environment](https://godbolt.org/z/vcxxj8fqY) that has everything set up you might need to solve this task (in terms of compiler).

This environment uses the `opt` LLVM tool as a 'compiler', allowing optimization passes to be applied to its input. The input and the output of this tool are both LLVM IR code files.

You may find the output of the `opt` tool's 'help' [accessible here](./opthelp.txt) useful.

For simplicity's sake, the list of optimization passes best fit for these tasks are:
- SROA (does many things, including transforming code to SSA form) (`-p='sroa'`)
- ADCE (aggressive dead code elimination) (`-p='adce'`)
- LICM (loop invariant code motion) (`-p='licm'`)
- Loop unroll (`-p='loop-unroll'`)
- mem2reg (`-p="mem2reg"`)
- instcombine (`-p='instcombine'`)
- simplifycfg (`-p='simplifycfg'`)

## What to upload

As your solution of this task we expect you to submit the optimized LLVM IR code snippet (the output of opt on Compiler Explorer), and a short (1-2 sentences) summary of your reasons for selecting the given LLVM optimization pass, and the process leading to the decision.

**Many passes apply a common subset of optimization techniques, thus experimenting with passes other than the first pass leading to a somewhat optimal result could lead to a better solution. There might be passes that produce the same result.**

## Example solution

The task was to find a pass that is capable of optimizing the following function:
```
define i32 @myFunction(i32 %x) {
    %result = mul nsw i32 %x, 2 
    ret i32 %result
}
```

You can experiment with this code snippet in a pre-configured: [Compiler explorer session.](https://godbolt.org/z/dTGzr6qeb)

The pass yielding the best result is ```instcombine``` (as you might have seen, we have already applied it in the Compiler Explorer example).

For this assignment, the submission would be made up of 
- the following code snippet (the output of `opt`):
```
define i32 @myFunction(i32 %x) {
  %result = shl nsw i32 %x, 1
  ret i32 %result
}
```
- a few sentences detailing the process leading to the solution:
*After trying multiple passes, and experimenting with optimizations the different built-in optimization passes (such as -O2) were able to apply, I concluded that the `instcombine` pass is capable of turning the multiplication into a shift operation, which is beneficial on most of the popular CPU architectures.*

### Scoring

The homework assignment in total is worth 0-2 points, a homework assignment with a minimum of 1 point is considered to be successful. 1 point can be achieved for the LLVM assignment if the chosen optimization and the 1-2 sentence summary are correct. For the [ANTLR](../ANTLR_HW/ANTLR_EN.md) task, 1 point can also be achieved.