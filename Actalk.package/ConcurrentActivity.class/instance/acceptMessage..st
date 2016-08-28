message handling
acceptMessage: aMessage 
	"Accept a message by launching a behavior subprocess to consume the 
	message. "
	self startSubProcessFor: aMessage