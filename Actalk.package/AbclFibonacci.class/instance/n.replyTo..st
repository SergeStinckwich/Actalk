script
n: n replyTo: r 
	"First version:
		Create recursively two new active objects to handle the 
	two recursive sub computations.
		Wait for both of their replies."
	n < 2
		ifTrue: [r reply: 1]
		ifFalse: [self class new active n: n - 1 replyTo: aself.
			self class new active n: n - 2 replyTo: aself.
			self
				waitFor: #(#reply: )
				andDo: [:v1 | self
						waitFor: #(#reply: )
						andDo: [:v2 | r reply: v1 + v2]]]