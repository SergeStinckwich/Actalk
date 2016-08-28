message passing
internalReceiveMessageWithoutYield: aMessage 
	"Resend the message by enqueueing it to the mailbox.
	Useful to 
	implement (naive) delay of a message when the conditions of its 
	acceptance are not yet fullfilled.

	WARNING: This MAY result in an 
	infinite accept/resend cycle.
	No processor yield is performed. (NO 
	PROTECTION!).
	However this is useful when a yield is unneeded in case 
	of no accept loop
	(this is the case for subprocesses computing only one 
	message).
	(See for instance naive implementation of synchronization in 
	method doesNotUnderstand:
	of class NullBoundedBuffer within category 
	Actalk-Ext-Actor-Examples.)

	Also notice that it does not call the method 
	asynchronousSend:,
	this is because we don't want to trigger the receive 
	event again."
	mailBox nextPut: aMessage