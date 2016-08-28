message handling
evaluateGuardForMessage: aMessage 
	"Evaluate the associated condition/guard with the current 
	arguments.
	Checks if the message belongs to current set of enabled 
	selectors
		AND if the guard evaluates to true.
	Note that both checks must 
	be done within the same atomic block."
	^ (enabledSelectors includes: aMessage selector)
		and: [super evaluateGuardForMessage: aMessage]