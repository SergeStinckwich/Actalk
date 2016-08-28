error handling
doesNotUnderstand: aMessage 
	"Receive the message."
	"Assumption of triggering the error is ensured by class 
	TrapMessagesObject. "
	^ self receiveMessage: aMessage