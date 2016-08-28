activity setting
createProcess
	"This is a parameter method, intended to be possibly redefined in 
	extension subclasses."
	"Create and return the activity process which consumes the body."
	^ [self body] newProcess