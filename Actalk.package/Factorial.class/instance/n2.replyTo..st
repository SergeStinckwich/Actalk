script
n2: n replyTo: r 
	"Version2: uses a block continuation."
	n = 0
		ifTrue: [r reply: 1]
		ifFalse: [aself
				n: n - 1
				replyTo: (self
						singleReplyContinuationBlock: [:v :me | r reply: n * v])]