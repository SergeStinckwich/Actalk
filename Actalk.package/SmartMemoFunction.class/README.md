Class SmartMemoFunction is an improved version of memo functions.
It is defined as a subclass of class MemoFibonacci because it reuses the memoDictionary structure.
(This is because almost all definition of class MemoFibonacci was not specific to fibonacci computation).
Consequently we define SmartMemoFunction as an abstract class.
For simplification we just assume that the function has only one argument but it may be easily expanded to accept a variable number of arguments.
Concrete subclass SmartMemoFibonacci will just have to supply the semantics of the actual computation of the (fibonacci) function, through method computeN:replyTo:.

SmartMemoFunction ensures that actual computation of <n> occurs only once.
Requests for a computation of <n> are memorized (that is reply destinations are stored within the dictionary in place of the yet uncomputed value of f(n)). Once the value is computed it is stored in the dictionary and all pending reply destinations requesting this value are served.