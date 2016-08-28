Class BinaryAdder implements a (binary) additive join continuation.
A continuation represents the remaining part of a computation (as for this case summing up both sub computations) and can be specified as an explicit actor and passed along as a reply destination. A first simple example of continuation may be found in definition of class FactorialContinuation in category Actalk-Examples.
BinaryAdder join continuations are used for instance in class Fibonacci within category Actalk-Examples. Basically BinaryAdder will sum up the two recursive sub computations and send the result to the reply destination (either another embedding join continuation or the final destination, e.g., Print).

We assume that the operation (+) is commutative.
Note that Binary Adder also resynchronizes the two subcomputations and therefore acts as a join operator in data flow.

Instance Variables:

	v1		<nil/Integer>	will hold the first value received.
	r		<Address>	the reply destination to which the computed result has to be sent.
						It is stored in this variable once creating the continuation.