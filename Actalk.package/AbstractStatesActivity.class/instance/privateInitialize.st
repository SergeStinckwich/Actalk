initialize
privateInitialize
	"Compute and assign the initial collection of enabled selectors.
	Add the set 
	of always enabled (synchronization free) selectors."
	super privateInitialize.
	enabledSelectors := (self perform: self initialAbstractState)
				+ self always