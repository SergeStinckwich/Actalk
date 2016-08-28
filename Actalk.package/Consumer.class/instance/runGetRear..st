script
runGetRear: max 
	"Run max times alternatively get and getRear requests to the bounded 
	buffer.
	Assume the bounded buffer is an implicit reply active object."
	| isGetRear |
	isGetRear := true.
	max
		timesRepeat: [Transcript show: 'Consumer requests '.
			isGetRear
				ifTrue: [Transcript show: 'getRear';
						 cr.
					[Print reply: buffer getRear value] fork]
				ifFalse: [Transcript show: 'get';
						 cr.
					[Print reply: buffer get value] fork].
			isGetRear := isGetRear not.
			(Delay forSeconds: delay) wait]