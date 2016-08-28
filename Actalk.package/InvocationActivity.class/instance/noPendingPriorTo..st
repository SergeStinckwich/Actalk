predicates on invocations
noPendingPriorTo: arrivalTime
	"Check if there is no prior (arrived earlier) pending invocation which may be accepted
	(that is satisfies its guard).
	That is ensure (global) message ordering preservation.
	Note: departure time (from the sender) is not considered.
	Return a boolean."

	^self noPendingWith: [:invocation |
		invocation arrivalTime < arrivalTime
			and: [self evaluateGuardForMessage: invocation]]