guards
guardOFget
	"One more constraint: no get2."
	^ super guardOFget
		and: [(self current: #get2)
				= 0]