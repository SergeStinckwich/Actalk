message passing types
futureSend: aMessage withFutureClass: futureClass inMessageQueue: queue 
	"Implement future type message passing as an asynchronous message 
	send
	with the future object inserted within the message.
	Immediately 
	return the future object."
	| aFuture |
	aFuture := futureClass new.
	self
		asynchronousSend: (self insertReplyDestination: aFuture intoMessage: aMessage)
		inMessageQueue: queue.
	^ aFuture