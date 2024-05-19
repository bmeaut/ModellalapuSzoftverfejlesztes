# Pattern matching

For this homework we will use the graph pattern matching language available in the Refinery framework. The homework will build on Lab 6. The goal of the assignment will be to formulate a few simple model queries.

## Preparations
- Get familiar with the pattern language available in Refinery: https://refinery.tools/learn/language/predicates/
- The development environment for the lab is available in the online web editor: https://refinery.services/
- Download the [initial state](https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/raw/master/homework/homework_05/social-empty.problem) and import it into the header environment (`Open` icon). The exercise is also available at [this link](https://refinery.services/#/1/KLUv_WD1FiUyAOY1mCYQrzYHBohXuXm1eolBE1vOCDyIV-4-w3pQ_bQY0q40uYkAAAWUCoQAiwCOABedm8unlVrNa-v0CbqKL4bnG-5cGVc2XI5ouA354PqVmdal3J_NewrZdeRPUP_IrZqhnvubF1d-o5gMZ_Zkyyd02v8djEOeci2fU5_kRB53IEu5d-m26neGL3oK6Hpy_L7IG0_xZ083IUuvkKzphX_qJIa4wR93Ho-I47ydGKO9DY9EAhFHLRi92EMnFXoppPYnoJVkhucnoM99LKdFcCaWBITcbsW8GX4uT5dWumnlVpqHNX24q-m9XD_dJSd7MZgNxA0g0VUQD9FVU9_KUyyXotz0qp3m07a0cKVa_jjo4cKXQuNlNdcK6BimnZRfzHBzZZng9sUmTOg-7XQt12JSiz3U7-VQpYxjvCWVPQMVyiSSQNGBOB7PA-D9Mkrt1BZrDOJ4VnScfpm58vEi4ZF9o6G25IhxMLMWWk3-3EpqxTT2SZuDjTTXvXidFzEyM2ykhgsddIfx01URb636E3Pl2CdJJzUemd_0XCVFHDTDbY1Oci01Ugv5fToDyM6nVEEAwR0rPo3Imr5jA_UUN76ScitC8XNbJTettDwSEAdrbDW21orYkrDV2GJsLdYaFFUolAmLIAlrbD3-PBosamxFUGtsLQFKZUKJJpKoSVhb7JNFC5I0tloFYpTKmlBYNGGrRVBj9eQWNdbYghqr0ejJDs3CgYGLBXAgTdKgSk-GBCBGqUwo0YRNhiqge38kk58WNSZpbEHUH_ZnxT_Qk3b6SlB7woWlLBZXXIxJGlsQJAAFggGokmMLEY3ISJKCZFoDIgoaGAaaGGMPEoDiNImTlIKMOEVEhGpmQUFLbQeEVUttDupBHVYED3WWZrehpUTNQWu2MEcxYlGMkyOVIJMyjwbkcyGExJVghjuiSC6JMzhDKLTSgu17ImpAJMZAPkNaLwszGE7h1WprN9mENws3hO6Bze0YQBjAXjwICCQOopuuebMPehDALMxASQ7oAQmRq3xs_arzSTyXZE6O0fK0Qq45xWS8MYfcQP-F42OYZYfNjiZDEryoNLf7F7QRrBzmGOM0ZOTX7J8uCjJ8Z-EB3yB_gDfHOXLMOMfjStbQ7bJ73fkfQwi8Rmf3QMqGwCNbjPh42bCfOLKd3RiesXnS0m7IhKoI_OBqBtk-cf1055MWT2epOG6J6nHa4Q3X7j4hRMKhFEMhT1mFSEv_0_NnsEg0PwiAupaCKLmP9Y-I0UqelaKSgt_hjfkQqv8Qu1bDmkgLikdEoU1jvBJhoM-3TBob9-OZ0wtKPuv10UWXK7c8MKhKSDr-lQIHr6xMPD1uudylysjNDlN2cZqwyD4LiDydhsmRLiQ2ArqURPH9ycqo0Q3pVuleMd6RsVg2QEQ-8AhlZprIkaLG9XVkLucDY-4ocg-YBbRnb1Wf4sWCrN43ZYUXLZfTqCghm5PYxNKjd3XpOIZBoe73ABhgcxVWGY2PRha7yDT4oHjxrKbQCzwbmpe_9efluap5wxrzuehFlv4sV_FwScueDnyGcjLCu8MFZ7iw4ZjEt4Ox8Bb6-uopTbbRmQ3xxIWrnzhe2cX_xTaIliv2uEN7Xs3qx32cLFkjN3fG8nGpmS89nUAOKhHm4j1CuUmYYQzg3f1tEEUsTe36r6Z692PxTog-iiGSMd6dmUkYdUDgm0rpz8BobOAjtuU797IWfrZvILyf_PBOEWy_1IgRvhfX6JyPhmvSgxkwjkViadMFLHTE11obgZhJviZ_MKWyDfwH1hIbchP0DwiN2plkr1nlaeef-ZFhanD45B00g8K4cMmLfg00xJ_ie6PwAovKLJV0keQikiCH4rbpIS1kpzSH0dMMFS9Wc1MiyARzTq7XJOGhDxRUz4wqhRDqmOuAUKVz9D7LW_ejnQrbEYvnNb2ffwoFodWArXCsfAB5yexyR2C7JAOh41opuMj2AnlmRD-g8CaOqO7DS90wi3mb1Ny9FLhm2mwrN-WVjqmQnqDGjGcnK1f1movVxZxfZrI44cX5KbrBnwmJkqyq5erATGFy7OT63UmDcsO-wLgmh2zCqOVjysDwRzlGSQqxcbETvDehZQIgbipIAAqPN83TVFZs53DCJ0wPgLMV).
- Don't forget to occasionally save your problem file to a local machine (`Save` or `Save as ...` key, `CTRL+S`).

## Task structure
### Development environment
The environment consists of3 views, which can be toggled on and off using the buttons at the top center.
- **Code**: this view displays our source code. During the homework assingment, we will edit our solution in this view.
- **Graph**: this view displays our model. This view can be very helpful in solving the homework problem, because it allows you to see where the solution differs from the expected behaviour. The "filter panel" (top left) allows you to toggle the display of different elements. The view supports the display of relations with 1 and 2 parameters, higher arity relations (e.g. predicates with more than 2 parameters) can only be displayed in the Table view.
- **Table**: this view displays the different relations of your model in a table format. The Value value shows the truth value of the given row, which can take up to 3 values in the homework:
     * `true`: true statement.
     * `error`: a statement where the homework solution and the expected value are inconsistent (e.g. one is true and the other is false for the given row). During the homework, these error rows will need to be removed.
     * `false`: if a row is not in the table, it is interpreted as a false statement.

### Source files
The problem file containing the task is made up of different parts:
- **Metamodel**: this describes the language elements in our model. The description of the metamodel follows the description of the XCore language (and is very similar to the class definitions of C or Java based languages). *This part does not should not be changed.*
- **Predicates**: here are the definitions of the predicates that can be fitted to the model. In this case, each predicate definition is a simple false; patterns never fit. *This is the part that need to be changed during the exercise.* The expected behaviour of the exercises is stated in a comment above the patterns.
- **Expected result**: This part describes where to expect the patterns to match for a correct implementation. *This part does not should not be changed.*
- **Instance model**: Here is the definition of an example model. The declare part introduces the objects, the positive statements introduce types and edges (e.g. `Person(person1).`), and the other statements set the other values of the model to false. The model may contain weird parts on purpose, since we want to test the writing of a model that can detect these meaningless parts. *This part does not should not be changed.*

## Description of the task
In this exercise, the following steps are to be performed with each predicate:
- Read the specification commented above the predicate.
- Modify the definition of the predicate (after `<->`) to implement the desired specification. Do not change the name of the predicate or the parameter list!
- Check in the **Table** view the matching set of the predicates:
    * If there is no row marked with `error`, we agree with the solution.
    * Otherwise, a row marked with `error` indicates a mismatch between the expected behavior and the current implementation.

A new predicate can be introduced, but not deleted. Please do not change the structure of the file! It is not necessary to use the **GENERATE** function in this exercise (it is used by the teachers for testing and scoring).

After the task is finished, save your solution (as `social.problem`), upload it to github, and tag your solution with `hw5-gt`!
