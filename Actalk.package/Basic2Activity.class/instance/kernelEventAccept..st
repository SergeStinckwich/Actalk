events
kernelEventAccept: aMessage 
	"This method is called when (before) the activity accepts a message."
	"This is the basic kernel method which should not be subclassed by 
	application classes."
	bself eventAccept: aMessage