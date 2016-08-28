body
body
	"Body: change/dispatch acceptance of messages according to the state of 
	the buffer."
	"Note that calls to state predicates must be sent to the pseudo variable 
	bself (behavior itself) reference to the behavior."
	[true]
		whileTrue: [self
				answer: (bself isEmpty
						ifTrue: [#(#put: )]
						ifFalse: [bself isFull
								ifTrue: [#(#get )]
								ifFalse: [#(#get #put: )]])]