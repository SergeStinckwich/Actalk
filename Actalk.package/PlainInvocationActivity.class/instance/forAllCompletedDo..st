enumerating invocations
forAllCompletedDo: aBlock
	"For all completed invocations evaluate aBlock.
	aBlock has one argument being the completed invocation."

	^completedInvocations do: aBlock