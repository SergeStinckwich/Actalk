synchro events
synchroEventComplete: aMessage 
	"Increment the number of completed invocations of current selector."
	super synchroEventComplete: aMessage.
	self incrCompleted: aMessage selector