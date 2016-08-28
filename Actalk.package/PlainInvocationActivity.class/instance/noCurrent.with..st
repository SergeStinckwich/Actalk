predicates on invovations
noCurrent: selector with: aBlock
	"Check if there is no current invocation of selector which satisfies condition aBlock.
	aBlock has one argument being the current invocation.
	Return a boolean."

	^self noCurrentWith: [:invocation |
		invocation selector = selector
			and: [aBlock value: invocation]]