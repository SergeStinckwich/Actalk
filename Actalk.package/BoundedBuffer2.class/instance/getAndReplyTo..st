script
getAndReplyTo: r 
	"If empty, then reply an error acknowledgement."
	self isEmpty
		ifTrue: ["If empty,"
			r reply: #getFailed
			"then, return a failure acknowledgement."]
		ifFalse: ["Otherwise,"
			super getAndReplyTo: r
			"serve the get."]