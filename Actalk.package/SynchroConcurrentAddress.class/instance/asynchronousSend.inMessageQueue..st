message passing
asynchronousSend: aMessage inMessageQueue: queue 
	"Ensure that asynchronous send (actual enqueueing of the message)
	AND 
	the receive synchronization event are atomic."
	activity synchroMutualExclusion
		critical: [super asynchronousSend: aMessage inMessageQueue: queue.
			activity synchroEventReceive: aMessage]