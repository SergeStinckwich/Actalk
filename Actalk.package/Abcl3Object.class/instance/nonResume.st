express control construct
nonResume
	"Terminate current standard activity process and recreate a new one.
	In 
	case a normal message was being processed, it will be aborted."
	"Should be used ONLY by express message methods!!
	(Otherwise if used 
	within standard methods,
	it would abort main activity process which is 
	current process!!)."
	"Note: the new activity process will be only created and not started,
	so 
	that it will be in the suspend state as was current activity process to be 
	resumed. "
	self activity process terminateNoSignal.
	self activity createProcess