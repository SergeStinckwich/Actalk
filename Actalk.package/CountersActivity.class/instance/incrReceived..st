counters updating
incrReceived: selector 
	"Increment the number of received invocations of message selector."
	receivedDictionary at: selector put: (receivedDictionary at: selector)
			+ 1