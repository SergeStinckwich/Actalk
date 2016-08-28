synchro events
synchroEventComplete: aMessage 
	"This synchronization event method is called once the behavior has 
	completed computation of a message.
	It is used for synchronization 
	purposes, for instance updating synchronization counters.
	At this 
	abstract level, default behavior is empty."
	^ self