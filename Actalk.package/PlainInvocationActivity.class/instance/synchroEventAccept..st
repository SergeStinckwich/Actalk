synchro events
synchroEventAccept: anInvocation
	"Add the invocation being accepted in the set of current activations."
	"Note that it occurs BEFORE the synchronization event."

	currentInvocations addLast: anInvocation.
	super synchroEventAccept: anInvocation