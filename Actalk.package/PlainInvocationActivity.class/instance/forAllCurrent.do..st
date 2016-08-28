enumerating invocations
forAllCurrent: selector do: aBlock
	"For all current invocations of selector evaluate aBlock.
	aBlock has one argument being the current invocation."

	^self forAllCurrentDo: [:invocation |
		invocation selector = selector
			ifTrue: [aBlock value: invocation]]