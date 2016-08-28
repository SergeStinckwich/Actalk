synchro events
synchroEventComplete: anInvocation
	"Signal the guards reevaluation semaphore as some event occurs."

	super synchroEventComplete: anInvocation.
	reevaluationSemaphore signal