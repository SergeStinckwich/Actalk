events
kernelEventComplete: aMessage 
	"Resume the main control activity process after completing activation of 
	a message."
	super kernelEventComplete: aMessage.
	controlSemaphore signal