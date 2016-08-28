message handling
doesNotUnderstand: aMessage 
	"Implement delaying of disabled methods by trapping error message and 
	resending the original message.
	Note: this means that any unknown 
	method is a disabled method."
	"Behavior replacement (self ready) should not be forgotten as for any 
	message acceptance.
	Otherwise the actor cannot accept next 
	message.
	Note that Processor yield is unnecessary because this process 
	terminates anyway."
	self ready.
	aself resendWithoutYield: aMessage