script
retrieveAndAddTo: aCollection 
	"Retrieve (in order) the sorted elements by adding them to a 
	collection.
	Note the synchronization (by waiting for the value of each 
	recursive call) in order to ensure ordering."
	leftSubTree isNil
		ifFalse: [(leftSubTree retrieveAndAddTo: aCollection) value].
	aCollection add: pivot.
	rightSubTree isNil
		ifFalse: [(rightSubTree retrieveAndAddTo: aCollection) value]