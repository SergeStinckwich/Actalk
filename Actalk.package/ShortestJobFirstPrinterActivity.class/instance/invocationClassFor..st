invocation class
invocationClassFor: aMessage 
	^ aMessage selector = #print:length:
		ifTrue: [JobSizeInvocation]
		ifFalse: [super invocationClassFor: aMessage]