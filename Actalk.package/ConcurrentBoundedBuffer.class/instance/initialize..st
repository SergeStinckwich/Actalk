initialize
initialize: anInteger 
	maxSize := anInteger.
	"One more room is needed in order to discriminate between emptyness 
	and fullness by comparing the two indexes."
	array := Array new: maxSize + 1.
	getIndex := 1.
	putIndex := 1