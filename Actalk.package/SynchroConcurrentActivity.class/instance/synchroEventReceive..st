synchro events
synchroEventReceive: aMessage 
	"This synchronization event method is called when (BEFORE) the 
	behavior receives a message.
	It is used for synchronization purposes, 
	for instance updating synchronization counters.
	At this abstract level, 
	default behavior is empty."
	^ self