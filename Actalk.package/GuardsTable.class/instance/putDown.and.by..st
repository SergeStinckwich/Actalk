script
putDown: i and: j by: philosopher 
	forksAvailability at: i put: true;
		 at: j put: true