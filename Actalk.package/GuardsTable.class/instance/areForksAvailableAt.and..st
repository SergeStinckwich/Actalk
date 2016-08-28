predicates
areForksAvailableAt: i and: j 
	^ (forksAvailability at: i)
		& (forksAvailability at: j)