invocation accessing
currentInvocation
	"Return current invocation."
	"This relies on the indexing of current invocations by the subprocess which actually computes them.
	Using current active process as an index, we may find out the right current activation."

	^self activity currentInvocations
			detect: [:invocation |
					invocation process = Processor activeProcess]
			ifNone: [self error: 'cannot find current invocation']