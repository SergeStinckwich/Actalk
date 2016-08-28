message handling
nextMessage
	"Next message is first acceptable message.
	Resend other ones."
	| message |
	[message := super nextMessage.
	self isCandidateMessage: message]
		whileFalse: [address internalReceiveMessage: message].
	^ message