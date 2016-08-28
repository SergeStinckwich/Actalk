initialize
privateInitialize
	"Create and initialize the array containing the availability of each fork."

	super privateInitialize.
	forksAvailability := Array new: bself n withAll: true