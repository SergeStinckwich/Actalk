abstract states
any
	"The any abstract state means that any selector is enabled.
	Return the 
	set of all script selectors."
	"Note that this set is recomputed at each call.
	An optimized 
	implementation would compute it once and cache it for instance within 
	a variable (of the instance or the class)."
	^ bself class allScriptSelectors