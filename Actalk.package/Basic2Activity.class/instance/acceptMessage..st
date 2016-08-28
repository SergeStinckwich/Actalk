message handling
acceptMessage: aMessage 
	"Add the triggering of generic event methods for accepting and 
	completing computation of a message."
	self kernelEventAccept: aMessage.
	super acceptMessage: aMessage.
	self kernelEventComplete: aMessage