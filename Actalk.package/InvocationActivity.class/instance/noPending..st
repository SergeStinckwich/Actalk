predicates on invocations
noPending: selector
	"Check if there is no pending invocation of selector.
	Return a boolean."

	^(self pending: selector) = 0