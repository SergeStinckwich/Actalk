message handling
performMessage: aMessage 
	"Bypass insertion of the reply destination if this is an asynchronous 
	type of message send."
	(address sendTypeOf: aMessage)
			= #asynchronous
		ifTrue: [bself performMessage: aMessage]
		ifFalse: [super performMessage: aMessage]