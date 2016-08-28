script
n: n replyTo: r 
	"First version:
		Send the two recursive sub computations requests to 
	current active object with a shared join continuation."
	"jc = join continuation."
	| jc |
	n < 2
		ifTrue: [r reply: 1]
		ifFalse: ["First create a join continuation,"
			jc := (BinaryAdder new r: r) active.
			"then send to aself the two recursive messages, with the join 
			continuation as the shared reply destination."
			aself n: n - 1 replyTo: jc;
				 n: n - 2 replyTo: jc]