abstract states
initialAbstractState
	"Return the initial abstract state.
	Must return some abstract state 
	symbol/selector. "
	"Mandatory. Must be supplied by the class or one of its superclass."
	^ self subclassResponsibility