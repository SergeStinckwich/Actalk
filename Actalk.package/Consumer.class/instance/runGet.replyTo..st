script
runGet: max replyTo: r 
	"Run max times a getAndReplyTo: (asynchronous) request to the bounded 
	buffer. "
	max
		timesRepeat: [Transcript show: 'Consumer requests';
				 cr.
			buffer getAndReplyTo: r.
			(Delay forSeconds: delay) wait]