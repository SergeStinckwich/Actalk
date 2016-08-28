guards
numberOfElements
	"Number of elements currently in the buffer.
	We need to substract 
	number of elements removed by getRear method."
	^ super numberOfElements
		- (self completed: #getRear)