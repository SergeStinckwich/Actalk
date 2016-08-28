message dispatching
receiveMessage: aMessage withSendType: type withSendMode: mode 
	"Generic dispatch on the message send mode."
	"This is a parameter method."
	"Default recognizes only standard mode."
	mode = #standard
		ifTrue: [^ self
				receiveMessage: aMessage
				withSendType: type
				inMessageQueue: mailBox].
	self error: 'unrecognized message mode: ' , mode printString