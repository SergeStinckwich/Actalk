abstract states
partial
	^ bself isOne
		ifTrue: [super partial]
		ifFalse: [super partial + #(#get2 )]