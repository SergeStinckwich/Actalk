events
kernelEventComplete: aMessage 
	"This method is called once the activity completed computation of a 
	message. "
	"This is the basic kernel method which should not be subclassed by 
	application classes."
	bself eventComplete: aMessage