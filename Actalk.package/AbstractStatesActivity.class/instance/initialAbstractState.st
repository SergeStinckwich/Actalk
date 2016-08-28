state transition
initialAbstractState
	"Return the initial abstract state.
	Mandatory. Must be supplied by the 
	activity class or one of its superclass.
	Must return some abstract state 
	symbol/selector. "
	^ self subclassResponsibility