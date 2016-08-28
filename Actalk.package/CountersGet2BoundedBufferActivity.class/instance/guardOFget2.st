guards
guardOFget2
	"Only one get or get2 at once and the buffer should contain at least two 
	elements. "
	^ (self current: #get2)
			= 0
		and: [(self current: #get)
					= 0
				and: [self numberOfElements >= 2]]