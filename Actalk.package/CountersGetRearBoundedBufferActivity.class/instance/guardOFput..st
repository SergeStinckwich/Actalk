guards
guardOFput: item 
	"As for superclass, except that we also have to exclude concurrent 
	activity of getRear.
	Note that the guard of put: (and of get) is 
	maintained valid,
	thanks to the redefinition of abstract method 
	numberOfElements. "
	^ (super guardOFput: item)
		and: [(self current: #getRear)
				= 0]