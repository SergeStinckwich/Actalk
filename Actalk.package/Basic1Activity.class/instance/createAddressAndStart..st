address creation
createAddressAndStart: activeObjectAddressClass 
	"Create the address of the active object, initialize its mailbox, start the 
	activity, and return the address."
	"Assume that method startActivity: does not specify a return value."
	^ (self computeAddressClass: activeObjectAddressClass) new startActivity: self