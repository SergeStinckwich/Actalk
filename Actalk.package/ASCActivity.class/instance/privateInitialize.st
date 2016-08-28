initialize
privateInitialize
	"Compute and assign the initial collection of enabled selectors."
	super privateInitialize.
	enabledSelectors := self perform: self initialAbstractState