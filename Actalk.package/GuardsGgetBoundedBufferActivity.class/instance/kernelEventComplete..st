events
kernelEventComplete: aMessage 
	super kernelEventComplete: aMessage.
	afterPut := aMessage selector = #put: