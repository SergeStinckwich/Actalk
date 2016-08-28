guard testing
evaluateGuardForMessage: aMessage 
	"Delegate the specification and evaluation of the guards to the behavior."
	^ bself
		perform: (self guardOfSelector: aMessage selector)
		withArguments: aMessage arguments