predicates
areForksSharedBetween: invocation1 and: invocation2
	"We assume that these are two eatWith:and: invocations
	with left and right fork positions as first and second arguments."

	^((invocation1 arg: 1) = (invocation2 arg: 1))
		or: [((invocation1 arg: 1) = (invocation2 arg: 2))
			or: [(invocation1 arg: 2) = (invocation2 arg: 1)]]