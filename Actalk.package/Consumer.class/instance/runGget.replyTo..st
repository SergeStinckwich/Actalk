script
runGget: max replyTo: r 
	"Run max times alternatively get and gget requests (asynchronously) to 
	the bounded buffer."
	"Temporary variable ratio defines the ratio between get and gget (1/ratio 
	requests are gget)."
	| ratio nGet |
	ratio := 3.
	"one third of requests are gget."
	nGet := 1.
	max
		timesRepeat: [Transcript show: 'Consumer requests '.
			nGet < ratio
				ifTrue: [Transcript show: 'get';
						 cr.
					buffer getAndReplyTo: Print.
					nGet := nGet + 1]
				ifFalse: [Transcript show: 'gget';
						 cr.
					buffer ggetAndReplyTo: Print.
					nGet := 1].
			(Delay forSeconds: delay) wait]