script
put: item 
	"If full, then first wait for and serve a get."
	self isFull
		ifTrue: [self
				waitFor: #(#getAndReplyTo: )
				andDo: [:r | r reply: contents removeFirst]].
	contents addLast: item