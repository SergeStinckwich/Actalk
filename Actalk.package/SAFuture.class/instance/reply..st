accessing
reply: aValue 
	"Set the value of a future.
	A SAFuture enforces there is at most one 
	assignment. "
	isReadySemaphore
		critical: [isReady
				ifTrue: [self error: 'cannot be assigned twice']
				ifFalse: [isReady := true.
					super reply: aValue]]