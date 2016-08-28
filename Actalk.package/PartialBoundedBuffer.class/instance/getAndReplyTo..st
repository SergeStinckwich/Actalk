script
getAndReplyTo: r 
	"This is a partial buffer, thus it defines and may accept a get."
	r reply: contents removeFirst.
	self
		replace: (self isEmpty
				ifTrue: ["Compute replacement behavior."
					EmptyBoundedBuffer new contents: contents maxSize: maxSize]
				ifFalse: [PartialBoundedBuffer new contents: contents maxSize: maxSize])