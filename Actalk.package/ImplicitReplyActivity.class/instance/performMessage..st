message handling
performMessage: anInvocation 
	"Perform the message and assign (reply) the returned value to the 
	future object (implicit reply destination)."
	anInvocation replyDest
		reply: (super performMessage: anInvocation)