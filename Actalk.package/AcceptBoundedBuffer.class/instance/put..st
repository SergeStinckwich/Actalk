script
put: item 
	"If full, then first accept a get."
	self isFull
		ifTrue: [self answer: #(#get )].
	contents addLast: item