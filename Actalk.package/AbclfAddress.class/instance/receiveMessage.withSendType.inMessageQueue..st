message dispatching
receiveMessage: aMessage withSendType: type inMessageQueue: queue 
	"ABCL/f future type message passing creates a single assignment future 
	object. "
	type = #future
		ifTrue: [^ self
				futureSend: aMessage
				withFutureClass: SAFuture
				inMessageQueue: queue].
	^ super
		receiveMessage: aMessage
		withSendType: type
		inMessageQueue: queue