synchro events
synchroEventComplete: aMessage 
	"Compute transition to next abstract state (leading to next enabled 
	selectors)
	after computing the message."
	super synchroEventComplete: aMessage.
	enabledSelectors := self
				perform: (self nextAbstractStateAfter: aMessage selector)