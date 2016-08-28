examples
example2
	"self example2"
	
	| anActorCounter |
	anActorCounter := TalkCounter new actor.
	anActorCounter increment; increment.
	(Delay forSeconds: 2) wait.
	^ anActorCounter behavior count. 
	