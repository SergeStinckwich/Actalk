script
runGget: max 
	"Run max times get and gget requests to the bounded buffer.
	Assume the 
	bounded buffer is an implicit reply active object."
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
					[Print reply: buffer get value] fork.
					nGet := nGet + 1]
				ifFalse: [Transcript show: 'gget';
						 cr.
					[Print reply: buffer gget value] fork.
					nGet := 1].
			(Delay forSeconds: delay) wait]