initialize
privateInitialize
	"Initialize the semaphore for ensuring atomicity against express message 
	interruption. "
	super privateInitialize.
	expressExclusionSemaphore := Semaphore forMutualExclusion