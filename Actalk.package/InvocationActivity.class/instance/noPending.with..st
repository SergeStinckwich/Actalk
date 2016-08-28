predicates on invocations
noPending: selector with: aBlock
	"Check if there is no pending invocation of selector which satisfies condition aBlock.
	aBlock has one argument being the pending invocation.
	Return a boolean."

	^self noPendingWith: [:invocation |
		invocation selector = selector
			and: [aBlock value: invocation]]