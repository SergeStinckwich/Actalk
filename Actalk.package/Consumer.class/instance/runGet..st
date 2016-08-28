script
runGet: max 
	"Run max times a get (synchronous) request to the bounded 
	buffer.
	Assume the bounded buffer is an implicit reply active object."
	max
		timesRepeat: [Transcript show: 'Consumer requests';
				 cr.
			[Print reply: buffer get value] fork.
			"Do not wait onto the value."
			(Delay forSeconds: delay) wait]