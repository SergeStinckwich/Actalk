script
runPut: max 
	"Run max times a put: request to the bounded buffer."
	1
		to: max
		do: [:i | 
			Transcript show: 'Produces: ' , i printString;
				 cr.
			buffer put: i.
			(Delay forSeconds: delay) wait]