example
switchToEnabled: boolean
	"Switch to optimized version with enabled selectors activity.
	May also revert to previous naive version (with message resend).
	Thanks to this method, we don't have to redefine all bounded buffer example classes."

	"self switchToEnabled: true"
	"self switchToEnabled: false"

	boolean
		ifTrue:
			[savedMethodSource := NullBoundedBuffer sourceMethodAt: #doesNotUnderstand:.
			NullBoundedBuffer
				removeSelector: #doesNotUnderstand:;
				compile:
'activityClass
	^EnabledSelectorsActorActivity'
				classified: #'default classes']
		ifFalse:
			[NullBoundedBuffer
				removeSelector: #activityClass;
				compile: savedMethodSource
				classified: #'message handling']