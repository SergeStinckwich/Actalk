script
get
	"Wait until buffer is not empty."
	self
		waitUntil: [self isEmpty not].
	"Reinitialization is specified in the associated post action method."
	^ array at: getIndex