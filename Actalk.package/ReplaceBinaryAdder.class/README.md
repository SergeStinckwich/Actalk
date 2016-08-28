Class ReplaceBinaryAdder represents a join continuation which adds two values along the behavior replacement model (class ActorObject).
Its replacement behavior is an instance of ReplaceUnaryAdder which stores the first value received.
We assume that the operation (+) is commutative.

Instance Variables:

	r	<Address>	the reply destination to which the computed result has to be sent.