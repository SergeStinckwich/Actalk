script
runGet2: max replyTo: r 
	"Run max/2 times a get2AndReplyTo: (asynchronous) request to the 
	bounded buffer (to remove max items)."
	max / 2
		timesRepeat: [Transcript show: 'Consumer requests two items';
				 cr.
			buffer get2AndReplyTo: r.
			(Delay forSeconds: delay) wait]