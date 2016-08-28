message passing
asynchronousSend: aMessage inMessageQueue: queue 
	"Add the triggering of generic event when receiving a basic 
	(asynchronous) message (before actual enqueueing)."
	"Note that the method kernelEventReceive: will also be defined in class 
	UndefinedObject
	so that if there is no activity yet (for instance in case 
	of FutureActors) nil does not signal an error."
	activity kernelEventReceive: aMessage.
	super asynchronousSend: aMessage inMessageQueue: queue