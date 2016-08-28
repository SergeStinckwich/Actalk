script
computeN: n replyTo: r 
	"The actual computation. Exactly as for standard Fibonacci class."
	"jc = join continuation."
	| jc |
	n < 2
		ifTrue: [r reply: 1]
		ifFalse: [jc := (BinaryAdder new r: r) active.
			aself n: n - 1 replyTo: jc;
				 n: n - 2 replyTo: jc]