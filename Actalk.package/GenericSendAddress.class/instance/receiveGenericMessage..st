message passing
receiveGenericMessage: aMessage 
	"Receive a generic invocation/message."
	"Generic dispatch along the message send type and mode."
	^ self
		receiveMessage: aMessage
		withSendType: (self sendTypeOf: aMessage)
		withSendMode: (self sendModeOf: aMessage)