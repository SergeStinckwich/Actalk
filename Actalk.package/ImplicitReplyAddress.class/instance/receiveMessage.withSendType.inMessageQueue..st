message dispatching
receiveMessage: aMessage withSendType: type inMessageQueue: queue 
	"Recognize future type."
	type = #future
		ifTrue: [^ self
				futureSend: aMessage
				withFutureClass: SAFuture
				inMessageQueue: queue].
	^ super
		receiveMessage: aMessage
		withSendType: type
		inMessageQueue: queue