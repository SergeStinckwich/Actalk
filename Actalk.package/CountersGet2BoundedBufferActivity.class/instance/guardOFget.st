guards
guardOFget
	"As for superclass, except that we also have to exclude concurrent 
	activity of get2.
	Note that the guard of get is maintained valid,
	thanks 
	to the redefinition of virtual method numberOfElements."
	^ super guardOFget
		and: [(self current: #get2)
				= 0]