predicates on invocations
noPending: selector priorTo: arrivalTime andWith: aBlock
	"Check if there is no prior pending invocation of selector which satisfies condition aBlock.
	aBlock has one argument being the pending invocation.
	Note: departure time (from the sender) is not considered.
	Return a boolean."

	^self noPending: selector with: [:invocation |
		invocation arrivalTime < arrivalTime
			and: [aBlock value: invocation]]