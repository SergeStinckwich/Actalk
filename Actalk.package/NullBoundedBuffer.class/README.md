Class NullBoundedBuffer implement a null (maximum size is 0) bounded buffer.
See class EmptyBoundedBuffer comment for further explanations.

Although not very useful in practice, it is useful as an abstract class for behavior classes EmptyBoundedBuffer and FullBoundedBuffer.
Therefore it implements redefinition of method doesNotUnderstand: to resend disabled/unknown messages (see class EmptyBoundedBuffer comment).
It also implements initialization and printing methods.
It is defined as a subclass of class ActorObject.

Instance Variables:

	contents		<BoundedBufferObject>	the bounded buffer object.
	maxSize	<Integer>				its maximum size, that is the maximum number of items.