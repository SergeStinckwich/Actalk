script
put: item 
	"Wait until buffer is not full."
	self
		waitUntil: [self isFull not].
	array at: putIndex put: item.
	putIndex := putIndex \\ array size + 1.
	(Delay forSeconds: 2) wait