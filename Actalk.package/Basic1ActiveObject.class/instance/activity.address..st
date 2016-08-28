activity creation
activity: activityClass address: addressClass 
	"Create an active object whose classes of activity and address are 
	specified. "
	"Assume that method createAddressAndStart: returns the new address."
	^ (activityClass new activeObject: self)
		createAddressAndStart: addressClass