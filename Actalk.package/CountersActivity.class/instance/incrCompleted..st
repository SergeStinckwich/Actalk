counters updating
incrCompleted: selector 
	"Increment the number of completed invocations of message selector."
	completedDictionary at: selector put: (completedDictionary at: selector)
			+ 1