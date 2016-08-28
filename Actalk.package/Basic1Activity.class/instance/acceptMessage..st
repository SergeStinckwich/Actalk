message handling
acceptMessage: aMessage 
	"This is a parameter method, intended to be possibly redefined in 
	extension subclasses."
	"Accept a message."
	"Default is to compute (perform) it."
	self performMessage: aMessage