## Exercise 1.6

Calling **sqrt-iter** when it uses the **new-if** procedure causes the interpreter to get stuck recursively calling **sqrt-iter**. Because **new-if** is a compound procedure, the interpreter uses applicative-order to evaluate it, which means that all arguments get evaluated no matter the value of the predicate. In evaluating the **else-clause**, **sqrt-iter** gets called again.
