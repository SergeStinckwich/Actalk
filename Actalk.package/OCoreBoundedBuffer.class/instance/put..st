script
put: item
	"If full, then invoke the buffer full user-defined event handler."

	self isFull
		ifTrue:
			[self activity bufferFullEvent]
		ifFalse:
			[super put: item]