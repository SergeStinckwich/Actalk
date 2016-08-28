synchro events
synchroEventAccept: anInvocation
	"Records if current direction is going to change."

	| destinationTrackNumber |
	super synchroEventAccept: anInvocation.
	anInvocation ifSelector: #moveHeadTo:andTransfer: do:
		[destinationTrackNumber := anInvocation arg: 1.
		destinationTrackNumber < currentTrackNumber
			ifTrue: [isGoingUp := false]
			ifFalse: [destinationTrackNumber > currentTrackNumber
						ifTrue: [isGoingUp := true]]]