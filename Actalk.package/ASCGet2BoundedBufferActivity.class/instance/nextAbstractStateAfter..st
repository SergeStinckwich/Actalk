state transition
nextAbstractStateAfter: selector 
	^ bself isOne
		ifTrue: [#one]
		ifFalse: [super nextAbstractStateAfter: selector]