implicit access
doesNotUnderstand: aMessage 
	"Sending a message is transparently delegated to the value of the 
	future.
	The future behaves as the value it will eventually hold."
	^ self value performMessage: aMessage