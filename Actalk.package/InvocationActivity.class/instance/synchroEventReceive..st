synchro events
synchroEventReceive: anInvocation
	"Assign a new time stamp to the invocation."
	"Signal the guards reevaluation semaphore as some event occurs."

	super synchroEventReceive: anInvocation.
	anInvocation arrivalTime: address nextTimeStamp.
	reevaluationSemaphore signal