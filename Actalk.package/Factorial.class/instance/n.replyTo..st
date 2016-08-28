script
n: n replyTo: r 
	"Version1: uses an explicit class of continuation."
	n = 0
		ifTrue: [r reply: 1]
		ifFalse: [aself n: n - 1 replyTo: (FactorialContinuation new n: n r: r) active]