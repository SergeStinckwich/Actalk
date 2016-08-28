Class BoundedBufferObject is a simple implementation of a bounded buffer internal and passive object as an ordered collection.

Instance Variables:

	maxSize	<Integer>	the maximum size of the bounded buffer
							(that is the maximum number of items it may contain).

Method addLast: is equivalent to a put:, and method removeFirst is equivalent to a get.
Method addLast: is redefined to check if the buffer is full. This is an internal check to trap whenever further synchronization constructs or programming is deficient.
State predicates (methods isFull and isEmpty) are also defined for convenience.