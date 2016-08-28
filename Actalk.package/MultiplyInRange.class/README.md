Class MultiplyInRange computes the function factorial in a concurrent way. (Class Factorial can compute several factorials concurrently but each one is processed serially).
This is a good example of dividing a recursive computation (basic example of divide and conquer strategy).
The starting is that computing fac(n) is equivalent to multiply all elements within interval [1 n].
Computation is divided in two sub-computation of two sub-intervals [1 mid] and [mid+1 n] and so on recursively.
For each division there is a join continuation (as for fibonacci, except that it will multiply the two values) created which will rejoin and multiply the two results.
While dividing intervals it will eventually reach a singleton interval ([i i]) which needs no further recursive computation (value is i).