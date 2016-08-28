message passing types
insertReplyDestination: r intoMessage: aMessage 
	"Insert the reply destination into the invocation.
	Return the message."
	^ aMessage replyDest: r