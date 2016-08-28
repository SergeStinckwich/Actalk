instance creation
new: maxSize 
	"Create a new empty bounded buffer behavior.
	If maxSize is null, create 
	a null bounded buffer behavior."
	^ (maxSize > 0
		ifTrue: [self]
		ifFalse: [NullBoundedBuffer
			"Bounded buffer of null size."]) new
		contents: (BoundedBufferObject new maxSize: maxSize)
		maxSize: maxSize