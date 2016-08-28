invocation class
invocationClassFor: aMessage 
	^ aMessage selector = #wakeUpAfter:
		ifTrue: [WakeUpTimeInvocation]
		ifFalse: [super invocationClassFor: aMessage]