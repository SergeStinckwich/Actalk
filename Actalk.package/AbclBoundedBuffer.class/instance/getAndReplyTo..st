script
getAndReplyTo: r 
	"If empty, then wait for a put: and serve directly the get request."
	self isEmpty
		ifTrue: [self
				waitFor: #(#put: )
				andDo: [:newItem | r reply: newItem]]
		ifFalse: [r reply: contents removeFirst]