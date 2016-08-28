adding
addLast: item 
	"Catch and trigger an error if the buffer is full."
	"This provides (some) checking of synchronization constructs 
	implementation, and specification."
	self size >= maxSize
		ifTrue: [self error: 'buffer is full']
		ifFalse: [super addLast: item]