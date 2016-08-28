initialize
privateInitialize
	"Initialize the collection of enabled selectors as the set of all script 
	selectors. "
	super privateInitialize.
	enabledSelectors := bself class allScriptSelectors