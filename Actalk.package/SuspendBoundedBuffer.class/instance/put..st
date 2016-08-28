script
put: item 
	"Wait until buffer is not full."
	self
		waitUntil: [contents isFull not].
	contents addLast: item