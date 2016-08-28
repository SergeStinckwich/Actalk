initialize
privateInitialize
	"This is a parameter method, intended to be possibly redefined in 
	extension subclasses."
	"This initialization method is automatically called at the latest possible 
	time,
	that is after initialization of instance variables has been 
	automatically done
	and before activation starts."
	"Default initialize: do nothing."
	"It is not named initialize to ensure there is no name clash/shadowing 
	with user (re)definition of initialize."
	^ self