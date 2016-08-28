script
n2: n replyTo: r 
	"Second version:
		Create recursively two new active objects to handle the 
	two recursive sub computations."
	"jc = join continuation."
	| jc |
	n < 2
		ifTrue: [r reply: 1]
		ifFalse: [jc := (BinaryAdder new r: r) active.
			self class new active n2: n - 1 replyTo: jc.
			self class new active n2: n - 2 replyTo: jc]