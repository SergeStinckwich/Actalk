Class PrimeFilter computes successive prime numbers.
The algorithm uses an ordered chain of filter active objects, each filter representing some prime integer.
Successive integers are sent through the chain.
An integer is checked by a prime number. If it can be divided then it is rejected, otherwise it will be sent to next filter in the chain. If it reaches the end of the chain, this means that a new prime number has been discovered. Then a new filter is created and added onto the chain.
Testing of various numbers and creation of filters occur concurrently.

Note: the algorithm is correct thanks to one strong assumption (enforced by implementation of Actalk kernel), that is message ordering preservation. This means that if an active object sends successively two messages to another active object, that one will receive the two messages in the same order. (Otherwise the chain of prime numbers could be unordered resulting in losing the correctness of the algorithm.)

Instance Variables:

	n		<Integer>				the prime integer represented.
	next		<nil/PrimeFilter address>	next prime filter in the chain (or nil if the end).