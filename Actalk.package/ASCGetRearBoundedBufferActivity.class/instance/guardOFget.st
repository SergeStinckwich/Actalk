guards
guardOFget
	"One more constraint: no getRear because there could be only one 
	element. "
	^ super guardOFget
		and: [(self current: #getRear)
				= 0]