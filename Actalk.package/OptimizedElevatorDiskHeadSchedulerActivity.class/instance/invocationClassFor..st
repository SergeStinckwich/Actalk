invocation class
invocationClassFor: aMessage 
	^ aMessage selector = #moveHeadTo:andTransfer:
		ifTrue: [DistanceInvocation]
		ifFalse: [super invocationClassFor: aMessage]