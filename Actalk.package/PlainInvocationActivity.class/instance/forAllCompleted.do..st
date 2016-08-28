enumerating invocations
forAllCompleted: selector do: aBlock
	"For all completed invocations of selector evaluate aBlock.
	aBlock has one argument being the completed invocation."

	^self forAllCompletedDo: [:invocation |
		invocation selector = selector
			ifTrue: [aBlock value: invocation]]