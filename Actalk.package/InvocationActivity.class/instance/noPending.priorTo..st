predicates on invocations
noPending: selector priorTo: arrivalTime
	"Check if there is no prior (arrived earlier) pending invocation of selector.
	That is ensure message ordering preservation for selector.
	Note: departure time (from the sender) is not considered.
	Return a boolean."

	^self noPending: selector priorTo: arrivalTime andWith: [:invocation | true]