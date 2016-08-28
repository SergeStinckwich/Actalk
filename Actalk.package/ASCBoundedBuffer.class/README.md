Class ASCBoundedBuffer implements the example of the bounded buffer with:
	
	abstract states to express synchronization constraints based on the state of the bounded buffer,
	guards on synchronization counters to specify synchronization constraints on actual activation.

Note that because guard specifications are now highly modular and expressive, they behave quite well against inheritance anomaly.