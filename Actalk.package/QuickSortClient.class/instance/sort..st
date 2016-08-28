script
sort: aCollection 
	"Sort the elements within the collection. Retrieve the result into a new 
	collection. "
	Transcript show: 'Sort: ' , aCollection printString;
		 cr.
	topTree := QuickSortTree new active.
	n := aCollection size.
	aCollection
		do: [:value | "Insert all elements."
			topTree insert: value andAckTo: aself].
	n
		timesRepeat: ["Wait for completion of insertion/sorting."
			self answer: #(#oneInserted )].
	Transcript show: 'Sort done.';
		 cr.
	^ self retrieve