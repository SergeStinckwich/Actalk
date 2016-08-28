body
body
	"Body: change/dispatch acceptance of messages according to the state of 
	the buffer."
	[true]
		whileTrue: [self
				answer: (self isEmpty
						ifTrue: [#(#put: )]
						ifFalse: [self isFull
								ifTrue: [#(#get )]
								ifFalse: [#(#get #put: )]])]