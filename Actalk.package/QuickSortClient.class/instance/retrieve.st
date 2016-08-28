script
retrieve
	"Retrieve the elements sorted into a new collection and return it."
	| aCollection |
	aCollection := OrderedCollection new.
	(topTree retrieveAndAddTo: aCollection) value.
	Transcript show: 'Result: ' , aCollection printString;
		 cr.
	^ aCollection