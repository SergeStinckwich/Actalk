examples
example1
	"self example1"
	
	| anActorCounter |
	anActorCounter := TalkCounter new actor.
	anActorCounter increment; increment.
	"^ anActorCounter count does not work since it will be a asynchronous call and the async just put the message in the queue"