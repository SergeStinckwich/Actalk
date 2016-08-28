message passing types
insertReplyDestination: r intoMessage: aMessage 
	"Replace the last argument by the reply destination.
	(Last argument is a 
	symbol used for future type selection.)
	Return the modified message."
	aMessage arguments at: aMessage arguments size put: r.
	^ aMessage