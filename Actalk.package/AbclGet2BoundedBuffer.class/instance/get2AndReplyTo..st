script
get2AndReplyTo: r 
	"If less than two items, wait for one put request.
	If buffer was not 
	empty, then reply the stored item and the new one.
	Otherwise we need 
	to wait for one more put."
	contents size < 2
		ifTrue: [self
				waitFor: #(#put: )
				andDo: [:newItem | self isEmpty
						ifTrue: [self
								waitFor: #(#put: )
								andDo: [:newItem2 | r
										reply: (Array with: newItem with: newItem2)]]
						ifFalse: [r
								reply: (Array with: contents removeFirst with: newItem)]]]
		ifFalse: [r
				reply: (Array with: contents removeFirst with: contents removeFirst)]