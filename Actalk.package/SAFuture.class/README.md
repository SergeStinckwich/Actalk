Class SAFuture enforces single assignment of futures.
It is a subclass of class Future.

Instance Variables:

	isReady				<Boolean>		predicate telling if assignment has been already done.
	isReadySemaphore	<Semaphore>	protects assignment of the predicate above.