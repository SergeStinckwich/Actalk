message passing
receiveMessage: aMessage 
	"Receive the message and make it generic (that is possibly add some 
	more information slots)."
	"Parameter method invocationClassFor: is defined in activity classes."
	"Note that as an optimization, we check if the generic invocation class is 
	class Message
	in order to create a new invocation only if needed (if 
	some more slots are defined)."
	| invocationClass |
	invocationClass := activity invocationClassFor: aMessage.
	^ self
		receiveGenericMessage: (invocationClass = Message
				ifTrue: [aMessage]
				ifFalse: [invocationClass new setSelector: aMessage selector arguments: aMessage arguments])