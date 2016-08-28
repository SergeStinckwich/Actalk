guard testing
evaluateGuardForMessage: aMessage 
	"Evaluate the associated condition/guard with the current arguments."
	^ self
		perform: (self guardOfSelector: aMessage selector)
		withArguments: aMessage arguments