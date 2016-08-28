synchro events
synchroEventAccept: anInvocation
	"Signal the guards reevaluation semaphore as some event occurs."

	super synchroEventAccept: anInvocation.
	reevaluationSemaphore signal