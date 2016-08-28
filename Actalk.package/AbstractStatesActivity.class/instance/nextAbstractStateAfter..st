state transition
nextAbstractStateAfter: selector 
	"Specify and compute next abstract state.
	Must return some abstract state 
	symbol/selector.
	Default is by delegating this specification/computation 
	to the active object."
	^ bself nextAbstractStateAfter: selector