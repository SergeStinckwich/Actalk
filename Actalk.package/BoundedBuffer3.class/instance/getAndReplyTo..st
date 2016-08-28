script
getAndReplyTo: r 
	"If empty, then resend the message."
	self isEmpty
		ifTrue: ["If empty,"
			aself
				resend: (Message selector: #getAndReplyTo: argument: r)
			"then, resend the original message..."
			"...reconstructed."]
		ifFalse: ["Otherwise,"
			super getAndReplyTo: r
			"serve the get."]