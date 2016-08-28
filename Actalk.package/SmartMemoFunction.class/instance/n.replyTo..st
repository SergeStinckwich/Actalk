script
n: n replyTo: r 
	"Compute the function by first looking into the memory.
	If not found the 
	reply destination is added to the collection of requesting 
	continuations
	which is stored into the memory."
	| vn |
	vn := memoDictionary
				at: n
				ifAbsent: [#absent].
	vn = #absent
		ifTrue: ["If there is no entry in the dictionary, then, this means that 
			this is the first consultation request.
Then create a collection for 
			storing requesting reply destinations with current reply 
			destination as first element."
			memoDictionary at: n put: (OrderedCollection new add: r;
					 yourself).
			aself
				computeN: n
				replyTo: (self
						singleReplyContinuationBlock: [:v :me | "Then actual computation is requested,"
							"with a new continuation inserted"
							aself at: n store: v])
			"which will send the result for memorization."]
		ifFalse: ["Otherwise, an entry has been found.
This entry may be the 
			actual value or a set of pending continuations requesting it."
			(vn isKindOf: Number)
				ifTrue: ["If it is a numeric value, the requested value has 
					already been memorized,"
					r reply: vn
					"and then just reply it."]
				ifFalse: ["Otherwise this is a collection of continuations."
					(memoDictionary at: n)
						addLast: r]
			"then just add on the requesting continuation."]