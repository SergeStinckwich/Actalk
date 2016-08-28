guards
guardOFeatWith: i and: j 
	"Add the extra constraint that there cannot be another pending eating 
	activation
	which has already been skipped more than two times."
	^ (super guardOFeatWith: i and: j)
		and: [self
				noPending: #eatWith:and:
				priorTo: currentInvocation arrivalTime
				andWith: [:invocation | (self areForksSharedBetween: invocation and: currentInvocation)
						and: [invocation numberTimesSkipped > 2]]]