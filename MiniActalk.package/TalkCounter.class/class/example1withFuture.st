examples
example1withFuture
	"self example1withFuture"
	
	| anActorCounter |
	anActorCounter := TalkActorWithFuture new.
	anActorCounter behavior: TalkCounter new.
	self halt.
	anActorCounter increment; increment.
	^ anActorCounter count forceValue. 
	