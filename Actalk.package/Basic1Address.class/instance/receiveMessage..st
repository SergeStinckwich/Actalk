message passing
receiveMessage: aMessage 
	"This is a parameter method, intended to be possibly redefined in 
	extension subclasses."
	"Receive a message from an object."
	"Default interpretation of the reception is a standard asynchronous send."
	"Note that, asynchronousSend will return default return value, that is 
	self,
	because an asynchronous and unidirectional send does not return 
	a specific reply value."
	^ self asynchronousSend: aMessage inMessageQueue: mailBox