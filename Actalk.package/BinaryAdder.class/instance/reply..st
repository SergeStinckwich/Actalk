script
reply: v
	"Receive one of the values."
	"We assume that a nil value means no value yet. Therefore we avoid using an extra flag.
	A cleaner specification with the behavior replacement model is found in class ActorBinaryAdder."

	v1 isNil	
		ifTrue: [v1 := v]			"First value is stored."
		ifFalse:
			[r reply: v1 + v.		"Second value triggers replying the computed result."
			self terminate]		"Optimize resource recovery, as no more message is expected."