counters accessing
current: selector 
	"Number of current (accepted but not completed yet, that is currently 
	being computed) invocations of message selector."
	^ (self accepted: selector)
		- (self completed: selector)