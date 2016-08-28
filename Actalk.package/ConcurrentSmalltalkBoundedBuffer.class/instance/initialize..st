initialize
initialize: anInteger 
	maxSize := anInteger.
	array := Array new: maxSize + 1.
	getIndex := 1.
	putIndex := 1