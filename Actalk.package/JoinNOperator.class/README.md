Class JoinNOperator represents a generic n-values operator join continuation.
It is an abstract class.
Join2Adder and Join2Multiplier are concrete derivations.

Instance Variables:

	n		<Integer>	the number of values required.
	operator	<Symbol>	the selector of the operation.
	neutral	<Integer>	the neutral element of the operation.
						It is used when applying the operation (assumed binary) to all values.
						Value is 0 (zero) for +, 1 (unity) for *.
	values	<OrderedCollection>	holds the values received.
	r		<Address>	the reply destination to which the computed result has to be sent.