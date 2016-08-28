message passing
internalReceiveMessage: aMessage 
	"Resend the message by enqueueing it to the mailbox.
 Useful to 
	implement (naive) delay of a message when the conditions of its 
	acceptance are not yet fullfilled.
 (See for instance naive 
	implementation of synchronization in class SelectiveAcceptActivity, 
	category Actalk-Ext-SelectActivity).

 WARNING: This may result in an 
	infinite accept/resend cycle. (See default protection below).

 Also notice 
	that it does not call the method asynchronousSend:inMessageQueue:,
 this 
	is because we don't want to trigger the receive event again."
	mailBox nextPut: aMessage.
	Processor yield
	"Give way to other processes. This is NECESSARY.
 Otherwise there is 
	strong chance this active object ALWAYS keep the processor.
 (By 
	infinitely accepting and resending the same message)."