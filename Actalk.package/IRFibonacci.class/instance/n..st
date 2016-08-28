script
n: n 
	"Create recursively two new active objects to handle the two recursive 
	sub computations.
	Send two future type messages and sum up their 
	values. "
	^ n < 2
		ifTrue: [1]
		ifFalse: [(self class new active n: n - 1)
				+ (self class new active n: n - 2)]