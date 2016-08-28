events
kernelEventReceive: aMessage 
	"This method is called when the address has received a new message 
	(and before actual enqueueing)."
	"This is the basic kernel method which should not be subclassed by 
	application classes."
	bself eventReceive: aMessage