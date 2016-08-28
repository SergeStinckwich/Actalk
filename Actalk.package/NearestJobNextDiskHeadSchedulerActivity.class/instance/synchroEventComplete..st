synchro events
synchroEventComplete: anInvocation
	"Records new current track number, once the head has been moved."

	super synchroEventComplete: anInvocation.
	anInvocation ifSelector: #moveHeadTo:andTransfer: do:
		[currentTrackNumber := anInvocation arg: 1]