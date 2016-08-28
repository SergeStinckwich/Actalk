events
kernelEventAccept: aMessage 
	"Record currentMessage."
	"Note: this implementation is safe because we assume serialization. See 
	class comment."
	super kernelEventAccept: aMessage.
	currentMessage := aMessage