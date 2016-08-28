synchro events
synchroEventAccept: anInvocation
	"Maintain/update distance information of pending invocations."

	| deltaHeadMovement |
	anInvocation ifSelector: #moveHeadTo:andTransfer: do:
		[deltaHeadMovement := self distanceTo: (anInvocation arg: 1).
		self forAllPending: #moveHeadTo:andTransfer: do: [:invocation |
			invocation distance: invocation distance - deltaHeadMovement]].
	super synchroEventAccept: anInvocation