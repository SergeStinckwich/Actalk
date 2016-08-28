script
giveSomethingAndReplyTo: r 
	bag isEmpty
		ifTrue: ["If no more thing to give, then the thief kills itself (and replies 
			his own life...)."
			organization unregister: aself.
			Transcript show: self printString , ' is killed by ' , r printString;
				 cr.
			self terminate]
		ifFalse: ["Otherwise, it replies one thing among the ones it owns."
			r reply: bag removeOneRandom]