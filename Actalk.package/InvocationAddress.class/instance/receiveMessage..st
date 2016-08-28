message passing
receiveMessage: aMessage 
	"Receive an extended invocation with the sender object address 
	(reference).
	Before that, trigger the generic event for the sender to 
	send a message."
	| sender |
	sender := thisContext sender sender homeReceiver address.
	sender isNil
		ifFalse: [sender asObject eventSend: aMessage to: self].
	^ self receiveGenericMessage: ((activity invocationClassFor: aMessage) new setSelector: aMessage selector arguments: aMessage arguments;
			 sender: sender)