reset
flushCompletedInvocations
	"Flush the record of completed invocations."
	"Useful to free up used memory when not needed any more."

	^completedInvocations := OrderedCollection new