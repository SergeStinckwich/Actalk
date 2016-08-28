*actalk
factorialAndReplyTo: r 
	"Version1: uses an explicit class of continuation."
	self = 0
		ifTrue: [r reply: 1]
		ifFalse: [self - 1 factorialAndReplyTo: (FactorialContinuation new n: self r: r) active]