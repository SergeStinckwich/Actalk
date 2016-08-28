predicates on invocations
noPendingWith: aBlock
	"Check if there is no pending invocation which satisfies condition aBlock.
	aBlock has one argument being the pending invocation.
	Return a boolean."

	^(self mailBox detect: aBlock ifNone: [nil]) isNil