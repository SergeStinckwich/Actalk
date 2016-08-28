script
n: n replyTo: r 
	"Compute fibonacci by first looking into the memory.
	If not found 
	request the actual computation
	and insert a continuation to memorize 
	the result afterwards."
	| fn |
	fn := memoDictionary
				at: n
				ifAbsent: [#absent].
	fn = #absent
		ifTrue: [aself
				computeN: n
				replyTo: (self
						singleReplyContinuationBlock: [:v :me | 
							"Otherwise, we request the actual computation."
							"with a new continuation."
							r reply: v.
							aself at: n store: v])
			"which will also send the result for memorization."]
		ifFalse: ["If f(n) is found,"
			r reply: fn
			"then, reply it."]