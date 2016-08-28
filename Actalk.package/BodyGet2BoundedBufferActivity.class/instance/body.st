body
body
	"Body: change/dispatch acceptance of messages according to the state of 
	the buffer."
	[true]
		whileTrue: [self
				answer: (bself isEmpty
						ifTrue: [#(#put: )]
						ifFalse: [bself isOne
								ifTrue: [#(#get #put: )]
								ifFalse: [bself isFull
										ifTrue: [#(#get2 #get )]
										ifFalse: [#(#get2 #get #put: )]]])]