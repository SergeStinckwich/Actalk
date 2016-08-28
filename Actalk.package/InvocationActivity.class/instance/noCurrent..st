predicates on invocations
noCurrent: selector
	"Check if there is no current invocation of selector.
	Return a boolean."

	^(self current: selector) = 0