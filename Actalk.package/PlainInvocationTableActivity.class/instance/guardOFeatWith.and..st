guards
guardOFeatWith: i and: j
	"No other currently eating philosopher (invocation) using at least one of the requested forks."

	^self noCurrent: #eatWith:and: with: [:invocation |
		self areForksSharedBetween: invocation and: currentInvocation]