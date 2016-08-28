script
get
	"If empty, then first accept a put:."
	self isEmpty
		ifTrue: [self answer: #(#put: )].
	^ contents removeFirst