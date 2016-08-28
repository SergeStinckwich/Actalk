guards
guardOFget
	"One more constraint: no gget."
	^ super guardOFget
		and: [(self current: #gget)
				= 0]