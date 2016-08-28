script
runGet2: max 
	"Run max/2 times a get2 request to the bounded buffer (to remove max 
	items).
	Assume the bounded buffer is an implicit reply active object."
	max / 2
		timesRepeat: [Transcript show: 'Consumer requests two items';
				 cr.
			[Print reply: buffer get2 value] fork.
			(Delay forSeconds: delay) wait]