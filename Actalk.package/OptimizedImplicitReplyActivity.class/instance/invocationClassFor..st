default classes
invocationClassFor: aMessage 
	"Invocation with one slot to record the reply destination of the 
	message
	except for asynchronous message send."
	^ (address sendTypeOf: aMessage)
			= #asynchronous
		ifTrue: [Message]
		ifFalse: [WithReplyDestInvocation]