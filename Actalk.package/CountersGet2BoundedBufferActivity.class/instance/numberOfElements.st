guards
numberOfElements
	"Number of elements currently in the buffer.
	We need to substract 
	number of elements removed by get2 method (two elements for each 
	completion). "
	^ super numberOfElements - ((self completed: #get2)
			* 2)