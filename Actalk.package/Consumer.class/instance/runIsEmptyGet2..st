script
runIsEmptyGet2: max 
	"Run max/2 times a get2 request to the bounded buffer (to remove max 
	items).
	Also send isEmpty requests.
	Assume the bounded buffer is an 
	implicit reply active object."
	max / 2
		timesRepeat: [Transcript show: 'Consumer requests two items';
				 cr.
			[Print reply: buffer isEmpty value] fork.
			[Print reply: buffer get2 value] fork.
			(Delay forSeconds: delay) wait]