script
put: item 
	"If full, then resend the message."
	self isFull
		ifTrue: ["If full,"
			aself
				resend: (Message selector: #put: argument: item)
			"then, resend the original message..."
			"...reconstructed."]
		ifFalse: ["Otherwise,"
			super put: item
			"serve the put:."]