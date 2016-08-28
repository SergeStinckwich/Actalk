predicates on invovations
noCurrentWith: aBlock
	"Check if there is no current invocation which satisfies condition aBlock.
	aBlock has one argument being the current invocation.
	Return a boolean."

	^(currentInvocations detect: aBlock ifNone: [nil]) isNil