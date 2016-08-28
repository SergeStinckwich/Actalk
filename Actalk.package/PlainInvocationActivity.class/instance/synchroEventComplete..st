synchro events
synchroEventComplete: anInvocation
	"Transfer the invocation into the set of completed activations."
	"Note that it occurs AFTER the synchronization event."
	"It removes the reference to the subprocess which is terminated so that it may be garbaged."

	super synchroEventComplete: anInvocation.
	currentInvocations remove: anInvocation.
	completedInvocations addLast: anInvocation.
	anInvocation process: nil