message passing
receiveMessage: aMessage 
	"Delegate the message to the activity to perform it and return the value."
	^ activity performMessage: aMessage