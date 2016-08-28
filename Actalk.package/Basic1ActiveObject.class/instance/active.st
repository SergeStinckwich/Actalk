activity creation
active
	"This is a parameter method, intended to be possibly redefined in 
	extension subclasses."
	"Create an active object by activating its behavior."
	"Default classes of the activity (and the address), e.g., classes Activity 
	(and Address)
	are specified and returned by methods activityClass (and 
	addressClass). "
	"This is similar to method defaultControllerClass of class View."
	^ self activity: self activityClass address: self addressClass