guards
guardOFput: item 
	"One more constraint: no getRear."
	^ (super guardOFput: item)
		and: [(self current: #getRear)
				= 0]