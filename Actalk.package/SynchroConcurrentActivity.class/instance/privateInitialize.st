initialize
privateInitialize
	"Initialize the semaphore for mutual exclusion of synchronization 
	actions. "
	super privateInitialize.
	synchroMutualExclusion := Semaphore forMutualExclusion