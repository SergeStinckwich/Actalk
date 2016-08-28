Class ActiveProcess implements simple processes as active objects which can wait and signal an active object semaphore..
Computation of a process is extremely simplified into two methods/steps:
	method start, for starting computation and wait onto the semaphore,
	method signal, after resumption (signaling) by the semaphore.

ActiveProcess uses the generic events send (and receive) for tracing purposes.

Class ActiveProcess is defined as a subclass of active object behavior class WithSenderObject.

See class ActiveSemaphore comment.