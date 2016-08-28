Class BoundedBuffer implements the seminal example of synchronization.

The point is following: put: requests should not be accepted while the buffer is full. Conversely get requests should not be accepted while the buffer is empty. The acceptance of the methods is depending on the state of the buffer, that is put: method should be disabled (in other words, put: messages should not be accepted) when it is full, and get method should be disabled when it is empty.

This is a seminal example of synchronization on state conditions. Here we don't deal with intra-object concurrency where we would have to also control possible concurrent activations. See a first discussion of this point in class EmptyBoundedBuffer comment, in category Actalk-Actor-Examples. See examples of bounded buffer classes dealing with intra-object concurrency and activation synchronization for instance within category Actalk-Synchro-Counters-Ex.

In this example actual implementation of the bounded buffer relies on an internal bounded buffer object (class BoundedBufferObject) in order to focus on synchronization issues and not on data representation. In extensions with intra-object concurrency (e.g., category Actalk-Ex-BoundedBuffer-Ext) we will use an alternative implementation using an array and two indexes to clearly separate put and get accesses (accessing to distinct zones, a put and a get may take place concurrently).

In this first implementation (this example will be revisited in all kernel extensions dealing with synchronization), we face the absence of synchronization constructs because there is no way of controlling message acceptance. We can only acknowledge the failure in case of accepting disabled methods.

Instance Variables:

	contents		<BoundedBufferObject>	the bounded buffer object.
	maxSize	<Integer>				its maximum size, that is the maximum number of items.

The bounded buffer is shared by a producer (class Producer) and a consumer (class Consumer). It is possible to adjust relative speed of producer and consumer in order to check fullness or emptyness of the bounded buffer.
For instance using a ratio greater than 1 (e.g., 3 as in first example comment) will make the consumer work slower and as a consequence the bounded buffer will become full. A ratio lower than 1 (e.g., 1/3 as in second example comment) will start issueing get request onto an empty bounded buffer.

In all variations of class BoundedBuffer it may be specially useful to trace events to show the ordering of requests reception, acceptance and completion. You may set traces on a general class (for all example classes, evaluate ActiveObject setTrace: true) or more specific ones (ex: BoundedBuffer setTrace: true).

Note that the general issue is to be able to control the scheduling (starting of activation) of message invocations. Motivations may be to preserve consistency of the state (as for this BoundedBuffer example), avoid deadlock (see example of dining philosophers in category Actalk-Ext-Pool-Examples), avoid starvation, optimize services (for instance a printer would print out small jobs in priority), etc... By scheduling, we don't mean that activations have to be serialized as in the case of objects with no intra-object concurrency.
The general problem is to find strategies to express such conditions to be general and expressive enough, modular enough to be easily inherited, and easy to implement efficiently. This general problem is still an open problem as we need to find best compromises/tradeoffs.