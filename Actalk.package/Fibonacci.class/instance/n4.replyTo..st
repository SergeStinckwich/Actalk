script
n4: n replyTo: r 
	"Fourth version:
		With a block continuation adder.
	This one is a little  
	more tricky!
	The lexical block will assign the captured variable  
	v1,
	declared as a temporary variable of the method, in order to store  
	the initial value."
	"jc = join continuation."
	| jc v1 |
	n < 2
		ifTrue: [r reply: 1]
		ifFalse: [jc := self
						continuationBlock: [:v :me | v1 isNil
								ifTrue: [v1 := v]
								ifFalse: [r reply: v1 + v.
									me terminate]].
			"Optimize resource recovery."
			aself n4: n - 1 replyTo: jc;
				 n4: n - 2 replyTo: jc]