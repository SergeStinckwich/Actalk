script
put: item 
	"If full, then trace an error."
	self isFull
		ifTrue: ["If full,"
			Print reply: #putFailed
			"then, print a failure acknowledgement."]
		ifFalse: ["Otherwise,"
			super put: item
			"serve the put:."]