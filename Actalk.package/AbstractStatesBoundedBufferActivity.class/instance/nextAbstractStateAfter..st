state transition
nextAbstractStateAfter: selector 
	^ bself isEmpty
		ifTrue: [#empty]
		ifFalse: [bself isFull
				ifTrue: [#full]
				ifFalse: [#partial]]