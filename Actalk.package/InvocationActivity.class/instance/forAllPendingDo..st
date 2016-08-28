enumerating invocations
forAllPendingDo: aBlock
	"For all pending invocation evaluate aBlock.
	aBlock has one argument being the pending invocation."

	^self mailBox do: aBlock