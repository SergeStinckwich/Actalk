script
get
	"Wait until buffer is not empty."
	self
		waitUntil: [contents isEmpty not].
	^ contents removeFirst