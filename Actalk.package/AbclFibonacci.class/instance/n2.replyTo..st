script
n2: n replyTo: r 
	"Second version:
		Create recursively two new active objects to handle the 
	two recursive sub computations.
		Send two future type messages and 
	sum up their values."
	n < 2
		ifTrue: [r reply: 1]
		ifFalse: [r reply: (self class new active n: n - 1 replyTo: #future)
					+ (self class new active n: n - 2 replyTo: #future)]