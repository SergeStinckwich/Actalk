initialize
makeSynchroCounterDictionariesOnSelectors: selectors 
	"Create the three synchronization counters dictionaries with an entry 
	for each selector."
	receivedDictionary := IdentityDictionary new.
	acceptedDictionary := IdentityDictionary new.
	completedDictionary := IdentityDictionary new.
	selectors
		do: [:selector | 
			receivedDictionary at: selector put: 0.
			acceptedDictionary at: selector put: 0.
			completedDictionary at: selector put: 0]