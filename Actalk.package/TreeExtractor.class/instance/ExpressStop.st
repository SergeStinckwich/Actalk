script
ExpressStop
	"This is an express mode message."
	"Interrupt and abort current computation (method fringe:replyTo: and its 
	subcomputation). "
	Transcript show: self printString , ' is stopped.';
		 cr.
	self nonResume