selecting
ifSelector: aSelector do: aBlock
	"Useful as a shortcut for filtering along the selector
	 e.g., to perform initialization of specific invocations depending on which message (selector)."

	^selector = aSelector
		ifTrue: aBlock