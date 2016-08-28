events
synchroEventComplete: aMessage 
	super synchroEventComplete: aMessage.
	afterPut := aMessage selector = #put: