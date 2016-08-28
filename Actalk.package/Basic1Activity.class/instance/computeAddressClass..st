address creation
computeAddressClass: activeObjectAddressClass 
	"Compute and return the address class of the active object.
	Look for the 
	most specialized address class
	(between the address class 
	specified/computed by the active object behavior,
	and the one 
	specified/computed by the activity itself)."
	^ activeObjectAddressClass
		sub: self addressClass
		ifUnrelated: [self error: 'inconsistency between address classes']