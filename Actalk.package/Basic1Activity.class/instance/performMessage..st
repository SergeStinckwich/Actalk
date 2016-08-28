message handling
performMessage: aMessage 
	"This is a parameter method, intended to be possibly redefined in 
	extension subclasses."
	"Perform (compute) a message."
	"Default is for the active object behavior to actually perform it and 
	return the value."
	^ bself performMessage: aMessage