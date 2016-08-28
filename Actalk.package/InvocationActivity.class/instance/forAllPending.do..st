enumerating invocations
forAllPending: selector do: aBlock
	"For all pending invocations of selector evaluate aBlock.
	aBlock has one argument being the pending invocation."

	^self forAllPendingDo: [:invocation |
		invocation selector = selector
			ifTrue: [aBlock value: invocation]]