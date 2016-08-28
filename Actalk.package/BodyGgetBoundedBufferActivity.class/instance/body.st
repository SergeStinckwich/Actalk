body
body
	"Body: change/dispatch acceptance of messages according to the state of 
	the buffer."
	[true]
		whileTrue: [self
				answer: (bself isEmpty
						ifTrue: [#(#put: )]
						ifFalse: [bself isFull
								ifTrue: [#(#get )]
								ifFalse: [afterPut
										ifTrue: [#(#get #put: )
											"Note: gget should better be 
											stated before get because its 
											chances to be served are 
											smaller. "]
										ifFalse: [#(#gget #get #put: )]]])]