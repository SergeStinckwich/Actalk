script
get
	"Wait until buffer is not empty."
	self
		waitUntil: [self isEmpty not].
	self
		post: ["Reinitialization occurs after returning the item."
			getIndex := getIndex \\ array size + 1.
			(Delay forSeconds: 2) wait].
	^ array at: getIndex