abstract states
full
	^ bself isOne
		ifTrue: [super full]
		ifFalse: [super full + #(#get2 )]