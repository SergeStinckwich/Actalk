Class MAFuture (multiple assignment future) implements future objects which may hold several values (as in initial Abcl/1 model).
Class SharedQueue implements such basic functionalities, so class MAFuture is defined as a subclass of class SharedQueue.
We just need to rename the following accessing methods:

	nextValue	to:		next
	reply:		to:		nextPut:

and easily define the missing ones:

	isReady
	allValues