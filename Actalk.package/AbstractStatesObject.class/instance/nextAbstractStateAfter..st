state transition
nextAbstractStateAfter: selector 
	"Specify and compute next abstract state.
	Mandatory. Must be supplied 
	by the class or one of its superclass.
	Must return some abstract state 
	symbol/selector. "
	^ self subclassResponsibility