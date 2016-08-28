message passing types
synchronousSend: aMessage inMessageQueue: queue 
	"Implement synchronous message passing as waiting onto a future type 
	message passing."
	^ (self
		futureSend: aMessage
		withFutureClass: SAFuture
		inMessageQueue: queue) value