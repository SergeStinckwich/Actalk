examples
example1
	"self example1"
	
	| f |
	f := Future new.
	f reply: 33.
	^ f forceValue