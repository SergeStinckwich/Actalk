message passing
receiveMessage: aMessage withSendType: type withSendMode: mode 
	"Dispatch along the express mailBox according to the express mode."
	mode = #express
		ifTrue: [^ self
				receiveMessage: aMessage
				withSendType: type
				inMessageQueue: expressMailBox].
	^ super
		receiveMessage: aMessage
		withSendType: type
		withSendMode: mode