initialize
initialize
	super initialize.
	isReadySemaphore := Semaphore forMutualExclusion.
	isReadySemaphore
		critical: [isReady := false]