Class ReplaceUnaryAdder represents a join continuation which has already received one value.
When receiving the (second) value, it performs summation and replies the result to the reply destination.
We assume that the operation (+) is commutative.

Instance Variables:

	v1	<Integer>	the first value received.
	r	<Address>	the reply destination to which the computed result has to be sent.