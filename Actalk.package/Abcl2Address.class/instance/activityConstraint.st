compatibility constraints
activityConstraint
	"Abcl2Address method
		receiveMessage:
			assumes that the activity returns 
	an invocation instance of class WithSenderInvocation
			(at least having 
	one slot for sender)
			as defined by activity class
	WithSenderActivity."
	^ WithSenderActivity