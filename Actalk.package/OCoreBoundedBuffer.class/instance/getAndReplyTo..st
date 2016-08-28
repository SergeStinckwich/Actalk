script
getAndReplyTo: r
	"If empty, then invoke the buffer empty user-defined event handler."

	self isEmpty
		ifTrue:
			[self activity bufferEmptyEvent]
		ifFalse:
			[super getAndReplyTo: r]