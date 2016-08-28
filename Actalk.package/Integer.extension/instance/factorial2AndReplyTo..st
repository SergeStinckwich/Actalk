*actalk
factorial2AndReplyTo: r 
	"Version2: 2: uses a block continuation."
	self = 0
		ifTrue: [r reply: 1]
		ifFalse: [self - 1 factorialAndReplyTo: (SingleReplyBlockContinuation new
					behaviorBlock: [:v :me | r reply: self * v]) active]