predicates on invovations
noCompletedWith: aBlock
	"Check if there is no completed invocation which satisfies condition aBlock.
	aBlock has one argument being the completed invocation.
	Return a boolean."

	^(completedInvocations detect: aBlock ifNone: [nil]) isNil