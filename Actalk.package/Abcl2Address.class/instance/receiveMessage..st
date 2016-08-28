message passing
receiveMessage: aMessage 
	"Receive an extended invocation with the sender object address 
	(reference). "
	^ self receiveGenericMessage: ((activity invocationClassFor: aMessage) new setSelector: aMessage selector arguments: aMessage arguments;
			 sender: thisContext sender sender homeReceiver address)