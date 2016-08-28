script
start2
	"Alternative to start. Keeps waiting for pairs put/get (put, then 
	get).
	Equivalent behavior for clients."
	[true]
		whileTrue: [self
				waitFor: #(#put: )
				andDo: [:item | self
						waitFor: #(#getAndReplyTo: )
						andDo: [:r | r reply: item]]]