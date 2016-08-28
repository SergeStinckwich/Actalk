synchro events
synchroEventAccept: anInvocation
	"When accepting a pick up or put down forks invocation, switch the availability of the two requested forks."

	super synchroEventAccept: anInvocation.
	(#(pickUp:and:by: putDown:and:by:) includes: anInvocation selector)
		ifTrue: [self toggleForks: (anInvocation arg: 1) and: (anInvocation arg: 2)]