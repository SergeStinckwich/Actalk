enumerating invocations
forAllCurrentDo: aBlock
	"For all current invocations evaluate aBlock.
	aBlock has one argument being the current invocation."

	^currentInvocations do: aBlock