events
kernelEventComplete: aMessage 
	"Dispatch onto the synchronization event complete which should be 
	mutually exclusive with other ones."
	super kernelEventComplete: aMessage.
	synchroMutualExclusion
		critical: [self synchroEventComplete: aMessage]