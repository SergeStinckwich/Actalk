counters updating
incrAccepted: selector 
	"Increment the number of accepted invocations of message selector."
	acceptedDictionary at: selector put: (acceptedDictionary at: selector)
			+ 1