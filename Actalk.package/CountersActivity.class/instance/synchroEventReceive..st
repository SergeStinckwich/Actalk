synchro events
synchroEventReceive: aMessage 
	"Increment the number of received invocations of current selector."
	super synchroEventReceive: aMessage.
	self incrReceived: aMessage selector