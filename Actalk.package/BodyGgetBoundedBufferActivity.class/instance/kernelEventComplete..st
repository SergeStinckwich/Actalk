events
kernelEventComplete: aMessage 
	"Record if message being completed is a put:."
	super kernelEventComplete: aMessage.
	afterPut := aMessage selector = #put: