# Metamodeling

## Introduction
The aim of this homework is to learn the EMF technology presented in the metamodelling exercise. To implement the homework:
- Please review the following guide (https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/blob/master/practice/practice_05/Model-based%20Software%20Development%20Practice05.pdf). The guide is very detailed so that you can fully reproduce the exercise at any time. The guide also refers to videos, in case you get stuck, the video will show you how to use the device in detail. Pages 1-10 of the guide present the knowledge needed to complete the homework.
- Set up the environment needed to complete the task:
  - [JDK](https://adoptium.net/) (if you don't have one)
  - [Eclipse Modeling Tools](https://www.eclipse.org/downloads/packages/release/2025-03/r/eclipse-modeling-tools)
- Import the initial state (We arrived at a similar state during the lecture).
  - The initial state is available here: [HW04-init.zip](https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/raw/master/homework/homework_04/HW04-init.zip)
  - Import it into your development environment:
    - `File > impport > Existing Projects into Workspace > Select Archive file`
    - Extract the zip file
    - `Finish`

## Presentation of the environment
The issued project contains the following elements:
- `model` folder: this contains the models.
 - `My.*`: a file with the extension `.ecore` contains our metamodel, which is typically edited using the diagrams in the file with the extension `.aird`. The diagrams are located in the `Right click > Open` then `Representation per category > Design > Entities in a Class Diagram` folder. When you have finished editing, open the `.genmodel` file and click on the root to `Right click > Generate Model Code` to update your codebase (which may be necessary after each edit).
 - `model-input.xmi`: This contains a small sample model. For simple editing, use `Right click > Open With > Sample Reflective Ecore Model Editor` (you may need to search for the editor from a list).
 - `model-output.xmi`: This contains a small example model. This would be the output after model modifications. It is possible to refresh in the editor if you do not have `Refresh using native hooks or polling` option set in your environment.
- `/src/mycode/FixModel.java`: This is a source file that loads our `model-input.xmi` model, calls the `processModel` function, and saves the result to the `model-output.xmi` folder. We will need to edit this `processModel` function. The trastorm can be run with `Right click > Run as > Java Application`.
- `test` folder: contains a few tests. The tests can be run with `Right click > Run as > JUnit Test`. Ideally, all tests should run when the homework is finished.

During the exercise, we set up a similar environment and aimed first and foremost to demonstrate EMF-related technologies. Automatic build and automatic testing were not included, and other development environments were ignored. Although these aspects are important in real-life projects, our goal was to achieve visible results as soon as possible. This is also the aim of the homework.

## Description of the task

To complete the task, you must perform the following subtasks:

### Metamodelling
1. complete the social network metamodel with new elements. Add new elements: you can add Like options, messages, messages to each other, administrator users, subscription models, projects... The aim is to create a network similar to IMDB, Facebook or Github.
2. The size of the metamodel should be at least the following. The formal compliance of the dimensions can be checked with the `MetamodelTests.java` tests.
  * 8 classes
  * 10 references
  * 10 attributes
4. The metamodels should be somewhat meaningful; some of the models will be reviewed manually, and during the semester some researchers from our university will try to evaluate the projects using artificial intelligence methods.
  * Therefore, we avoid simply using `Class1, Class2, ...` classes to formally complete the tests
  * Also, avoid cheating by copying another homework (since graphs have much stronger evidence of copying than text)

### Modelling
5. After this, let's create a small example model: add new elements to `model-input.xmi`. If necessary, modify the metamodel. If the instance model becomes corrupted, either start again from the initial project or use the technique demonstrated in the exercise.
6. The size of the model should be at least the following. Formal compliance with the dimensions can be checked using the `InputModelTests.java` tests.
  * 20 objects
  * 20 attribute values

### Model manipulation from code
7. Finally, create an application that runs into a model and initializes the empty (default) attribute values: strings are rewritten to `"undefined"` or `"name1", "name2"`, empty int attributes to `-1.
  7.1 To do this, implement a model call in `FixModel.pocessModel()` that searches for all attributes in your model.
  7.2 and assigns a value to it, or possibly modifies the value (by calling the `.setXXX( )` function associated with the attribute).
8. You can test your code by running `/src/mycode/FixModel.java` and view the result in `model-output.xmi`.
9. Your code is checked by `FixingTest.java`. The test will set all values in your model to default values to test for correct behaviour, just to be safe (the test does not overwrite your models).

### Tagging and uploading
Let's verify the correctness of our work with the tests, upload the final version to GitHub, then tag our solution with `hw4-emf`.
