message dispatching
receiveMessage: aMessage withSendType: type inMessageQueue: queue 
	"Dispatch along the three types of message passing (now, past, future) 
	of ABCL/1.
	Check last argument to be symbol #now or #future."
	type = #now
		ifTrue: [^ self synchronousSend: aMessage inMessageQueue: queue].
	type = #future
		ifTrue: [^ self
				futureSend: aMessage
				withFutureClass: MAFuture
				inMessageQueue: queue].
	^ super
		receiveMessage: aMessage
		withSendType: type
		inMessageQueue: queue