invocation class
invocationClassFor: aMessage 
	^ aMessage selector = #eatWith:and:
		ifTrue: [SkippedInvocation]
		ifFalse: [super invocationClassFor: aMessage]