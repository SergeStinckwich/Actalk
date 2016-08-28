Class ActiveSemaphore implements a semaphore as an active object.
This example is a revised version of the example described in ABCL/1 by Akinori Yonezawa et al. in the OOCP book, pages 70-71.
In this example the semaphore has implicit access to the sender of a wait message (a process active object) in order to possibly enqueue it into the queue of waiting processes.

Class ActiveSemaphore is defined as a subclass of active object behavior class WithSenderObject.

Instance variables:

	numberExcessSignals	<Integer>			number of signals in excess received.
	waitingProcessQueue	<OrderedCollection>	queueof processes waiting onto the semaphore.