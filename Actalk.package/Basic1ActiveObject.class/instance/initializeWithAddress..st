initialize
initializeWithAddress: anAddress 
	"Initialize the address (aself) of the active object behavior.
	Then, 
	perform the generic initialization."
	aself := anAddress.
	self privateInitialize