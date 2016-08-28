synchro events
synchroEventAccept: anInvocation
	"If this is a priority updating request, perform the reassignment."

	super synchroEventAccept: anInvocation.
	anInvocation ifSelector: #updatePriorityOf:to: do:
		[PriorityTable at: (anInvocation arg: 1) put: (anInvocation arg: 2)]