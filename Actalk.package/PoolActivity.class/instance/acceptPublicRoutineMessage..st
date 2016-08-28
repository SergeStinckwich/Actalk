message handling
acceptPublicRoutineMessage: aMessage 
	"Accept and perform the public routine message as a standard Smalltalk  
	message."
	^ bself performMessage: aMessage