counters accessing
pending: selector 
	"Number of pending (received but not accepted yet) invocations of 
	message selector."
	^ (self received: selector)
		- (self accepted: selector)