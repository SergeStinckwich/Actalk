accessing
numberOfElements
	"Number of elements currently in the buffer.
	Compute the difference 
	between completed put: and completed get.
	Note: this is correct because 
	we assume that there is only one put: at once, and only one get at 
	once. "
	"Note: this method is useful as a shortcut within guards.
	But moreover 
	this abstract method will be useful to maintain consistency when 
	counting
	elements in the buffer regardless of how many new get 
	methods are defined in subclasses.
	Otherwise we would have to possibly 
	redefine ALL guards."
	^ (self completed: #put:)
		- (self completed: #get)