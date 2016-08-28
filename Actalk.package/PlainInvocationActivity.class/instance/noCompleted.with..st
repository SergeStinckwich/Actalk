predicates on invovations
noCompleted: selector with: aBlock
	"Check if there is no completed invocation of selector which satisfies condition aBlock.
	aBlock has one argument being the completed invocation.
	Return a boolean."

	^self noCompletedWith: [:invocation |
		invocation selector = selector
			and: [aBlock value: invocation]]