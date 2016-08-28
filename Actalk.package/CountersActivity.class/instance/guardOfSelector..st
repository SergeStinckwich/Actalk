guard testing
guardOfSelector: selector 
	"Return the selector (symbol) of the guard associated to a selector."
	"A guard is simply associated to a selector with the prefix guardOF.
	For 
	instance the guard of method put: is the method guardOFput:."
	^ ('guardOF' , selector) asSymbol