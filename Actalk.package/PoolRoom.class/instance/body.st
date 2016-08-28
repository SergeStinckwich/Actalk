body
body
	"Body: always accept exit, but accept enter only if room is not full (n -1 
	occupants). "
	"First message is for initializing and starting up the simulation."
	self answer: #(#start ).
	[true]
		whileTrue: [self
				answer: (occupancy < (n - 1)
						ifTrue: [#(#enter: #exit: )]
						ifFalse: [#(#exit: )])]