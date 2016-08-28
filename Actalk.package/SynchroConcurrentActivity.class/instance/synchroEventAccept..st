synchro events
synchroEventAccept: aMessage 
	"This synchronization event method is called when the behavior accepts 
	a message.
	It is used for synchronization purposes, for instance 
	updating synchronization counters.
	At this abstract level, default 
	behavior is empty."
	^ self