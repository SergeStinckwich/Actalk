process control
terminate
	"Terminate the activity process.
	Useful for cleanup (reclaiming 
	resources). "
	process isNil
		ifFalse: [process terminate]