abstract states
one
	"We disallow one of the possible get requests because there is only one 
	element,
	and consequently one get and one getRear cannot be active 
	concurrently.
	Note that by disallowing getRear (rather than get) we 
	give priority to get."
	^ self partial - #(#getRear )