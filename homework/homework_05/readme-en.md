# Pattern matching

For this homework we will use the graph pattern matching language available in the Refinery framework. The homework will build on Lab 6. The goal of the assignment will be to formulate a few simple model queries.

## Preparations
- Get familiar with the pattern language available in Refinery: https://refinery.tools/learn/language/predicates/
- The development environment for the lab is available in the online web editor: https://refinery.services/
- Download the [initial state](https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/raw/master/homework/homework_05/social-empty.problem) and import it into the header environment (`Open` icon). The exercise is also available at [this link](https://refinery.services/#/1/KLUv_WAwF8UyABa3myYAsTYHFg5TuX21Oo0xE1uCrzxlVN92bB-YVlqkoyXzwVz63_vDC4oAjACSABN0F18MzzfcuTKubLg80XAbcsL1KzOtS7k_m_cUsuvIn6D-kVs1Qz33Ny-u_EYxG87syZZP6LT_OxqHPOVaPqc-yRGA3Iks5d6l26rfGb7oLaDryfH7Im88xZ893YQs_UKyphf-qZNY4giH3IFABBzn7cQY7X24gIDjRDTrMAgIoOvnMpe35IhxAb0WUvsV0Eoyw_MV0Oc-ltMqOBWLQkJut2LeDD-Xp0sr3bRyK83Dmj7c1fRerp_ukpO9GMxG4giR6CqJiOiqqW_lKZZLUW561U7zaVtauFItfyD0sOFrofGymusFdA7TTsovZri5skxwO2MXJnSfdrqWizEpxh7q93Ko0sY13pLKnhedm8unlVrNa-v0Eig6kQfkgQC8X0apndpijUUez4qO0y8zVz5mLFxg72ioMLMYWk3-3EpqxTj2SZuEjTTXvXidGTEyO2ykhgsddIfx01UTb636E3P12CdJJzkemd_0XCVNJDTDbY1Oci01Ugv5fTqEyM6nlEFAwR8rPo7oaLiaB6zpPzZQT7HjKym3IhQ_t1Vy00qLWjCasYdOMgSRB2tsNbbWitiSsNXYYmwt1hoUVSiUCYsgCWtsQf5AHCxqbEVQa2ytAUplQokmkqhJWFvsk0ULkjS2WgVilMqaUFg0YatFkGP15BY11tiCHMvh6MkPzUICgowFcCJN0qBKT4YGIEapTCjRhE2GLqB7fySTnxY1JmlsQdQf9mfFP9CTdvpKUHvChqUsFldcjEkaWxA0AFUokyiCA6iSYw0RjchIUpJMc0IKGhbmkRhrHhKg4jSJkxSCjDhlRIRoZkFBS20HhFdPbQ56whlVBJ2Vl263pA5CwT_1X5gLGLHixirHzECULo8i4FdVlVClElONmmQVaqxKUBVYCcJ2v4gKIJWxOeyR1svCLOOcvZpobTP7Ic2yF3AF2NjGZswkmM9xxtxTVrZY_c99iINwVmEGGnJAGUiIXGXC5lI_n0y9NWaylJYZQOUqKWbBiznkAPpauMpnlmZYwWgCJDOLLkjeecE_ZCmINLzkULa8BnyqVpDxHRHE8gL5sGxORpCRy44q1VmDj8sW3d9fp3jcGMLnIYoNwUnmOGi75jafO6bdYmzP2AjX8hhyiKo3SXg5gywwcX268ol7SLdUHkOJ9lLs8Y1qt56QlzCoVEBxG68y0_8-4fkRbBttHFSAlaUA6bEnaSFSEiZPS5HR6_d5Y3oIzX_Arv1qCafFJiqJaCMYa4no9xGUzceGHTqIJMoUnTf5MKPRkX6fcLkkqgOJKWVaLqSXoiZZqwD4zTCSQ6eAxmrilvMySHwcH7lHqEugCXAoXdJ7JVujve5Xtpr9C9wtY3FzeIV48GDKm2AoRmyt5ssUvVwhBsARYkN0iWAihvWff1QM8Tn0qfXUWhRmzlUVjEGCFKU33tgM4yoGiiVvhjFYuRnmGbHDLRu0kAU-Nca0LVnMhDYO-VbLpeZpzm1fw0L6YdDZcbOYVOKTVR08ofAZ7OTCmSIpoZKwSpiUbMcjto_ZGqxd3_dIqUQjPzG8sTbFhj2_VzLAgjzTT5CpGwV6Irxt6cfVSKxMjn4tOF56hb6jynEgEcZkNv4h6NXiIa89Lkjg1iHkXyv35qVgWypFiJaem0znRE7lV3dCbq3xWLNYXUvS24Fh6bcELBzPRvsa8FwDIMfwQFrcU3zECtY6cDwqsLLVAIDlbh-3kq3_FGgx4rvLhDbc_gq2LmRrLZ7hUgK4SlnkxQGoWPOO1jGClu0EtRI2YmzoOA9cnE5vgEwnKV20swFK_AmRN6oXgFXqqYTAyEE_QT3Flv8hj44xlbQlKXwgRY2YpOqcElgmLnNwvSMJAnS0oFfNoCmEasdTB6z3nIj3mfQ6Ha2v2A6EeEbTG_FHLKhAGiiFhee7Ehc-LjkFHx-ZNHRIlcIb2XIgT9n9oRVfyAChe1QZ6M8ehCbluz8Z10ybnd4m2MIxJekhcNz0JLIaVoXh4ksxwy9zCpwwwtkU3QycyEQl96rQKjafeNIGcYDjfETWys7LuDyHiAR76zDJoO8LckyRZLVrsxOdZ57DBGG3g08QCo8wzVtU8dju4oSiAjg-k1Y=).
- Don't forget to occasionally save your problem file to a local machine (`Save` or `Save as ...` key, `CTRL+S`).

## Task structure
### Development environment
The environment consists of 3 views, which can be toggled on and off using the buttons at the top center.
- **Code**: this view displays our source code. During the homework assingment, we will edit our solution in this view.
- **Graph**: this view displays our model. This view can be very helpful in solving the homework problem, because it allows you to see where the solution differs from the expected behaviour. The "filter panel" (top left) allows you to toggle the display of different elements. The view supports the display of relations with 1 and 2 parameters, higher arity relations (e.g. predicates with more than 2 parameters) can only be displayed in the Table view.
- **Table**: this view displays the different relations of your model in a table format. The Value shows the truth value of the given row, which can take up to 3 values in the homework:
     * `true`: true statement.
     * `error`: a statement where the homework solution and the expected value are inconsistent (e.g. one is true and the other is false for the given row). *During the homework, these error rows will need to be removed.*
     * `false`: if a row is not in the table, it is interpreted as a false statement.

### Source files
The problem file containing the task is made up of different parts:
- **Metamodel**: this describes the language elements in our model. The description of the metamodel follows the description of the XCore language (and is very similar to the class definitions of C or Java based languages). *This part should not be changed.*
- **Predicates**: here are the definitions of the predicates that can be fitted to the model. In this case, each predicate definition is a simple false; patterns never fit. *This is the part that needs to be changed during the exercise.* The expected behaviour of the exercises is stated in a comment above the patterns.
- **Expected result**: This part describes where to expect the patterns to match for a correct implementation. *This part should not be changed.*
- **Instance model**: Here is the definition of an example model. The declare part introduces the objects, the positive statements introduce types and edges (e.g. `Person(person1).`), and the other statements set the other values of the model to false. The model may contain weird parts on purpose, since we want to test the writing of a model that can detect these meaningless parts. *This part should not be changed.*

## Description of the task
In this exercise, the following steps are to be performed with each predicate:
- Read the specification commented above the predicate.
- Modify the definition of the predicate (after `<->`) to implement the desired specification. Do not change the name of the predicate or the parameter list!
- Check in the **Table** view the matching set of the predicates:
    * If there is no row marked with `error`, we agree with the solution.
    * Otherwise, a row marked with `error` indicates a mismatch between the expected behavior and the current implementation.

A new predicate can be introduced, but not deleted. Please do not change the structure of the file! It is not necessary to use the **GENERATE** function in this exercise (it is used by the teachers for testing and scoring).

After the task is finished, save your solution (as `social.problem`), upload it to github, and tag your solution with `hw5-gt`!
