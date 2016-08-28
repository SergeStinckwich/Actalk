activity setting
startWithAddress: anAddress 
	"Initialize and start the activity.
	After initializing the address, (and 
	before starting the process),
	perform the generic initialization."
	address := anAddress.
	"The activity has reference to the address."
	bself initializeWithAddress: address.
	"The active object behavior also does."
	self privateInitialize.
	"Generic initialization."
	self start
	"Start the (process implementing the) activity."