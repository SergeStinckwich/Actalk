synchro events
synchroEventAccept: aMessage 
	"Increment the number of accepted invocations of current selector."
	super synchroEventAccept: aMessage.
	self incrAccepted: aMessage selector