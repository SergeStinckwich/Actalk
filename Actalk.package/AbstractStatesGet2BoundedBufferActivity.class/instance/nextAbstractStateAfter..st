state transition
nextAbstractStateAfter: selector 
	^ bself isOne
		ifTrue: [bself isFull
				ifTrue: [#oneAndFull]
				ifFalse: [#one]]
		ifFalse: [super nextAbstractStateAfter: selector]