script
put: item 
	"This is an empty buffer, thus it defines and may accept a put:."
	contents addLast: item.
	self
		replace: (self isFull
				ifTrue: ["Compute replacement behavior."
					FullBoundedBuffer new contents: contents maxSize: maxSize]
				ifFalse: [PartialBoundedBuffer new contents: contents maxSize: maxSize])