events
kernelEventComplete: aMessage 
	"Compute transition to next abstract state (leading to next enabled 
	selectors)
	after computing the message.
	Add the set of always enabled 
	(synchronization free) selectors."
	super kernelEventComplete: aMessage.
	enabledSelectors := (self
				perform: (self nextAbstractStateAfter: aMessage selector))
				+ self always