message dispatching
receiveMessage: aMessage withSendType: type inMessageQueue: queue 
	"Generic dispatch on the message send type."
	"This is a parameter method."
	"Default recognizes only asynchronous type."
	type = #asynchronous
		ifTrue: [^ self asynchronousSend: aMessage inMessageQueue: queue].
	^ self error: 'unrecognized message type: ' , type printString