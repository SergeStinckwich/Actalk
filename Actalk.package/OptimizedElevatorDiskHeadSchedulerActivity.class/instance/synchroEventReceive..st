synchro events
synchroEventReceive: anInvocation
	"Compute and assign the distance of a distance invocation."

	super synchroEventReceive: anInvocation.
	anInvocation ifSelector: #moveHeadTo:andTransfer: do:
		[anInvocation distance: (self distanceTo: (anInvocation arg: 1))]