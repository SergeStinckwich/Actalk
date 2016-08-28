accessing
allValues
	"Fetch all values of the MAFuture.
	Remove all values of the shared 
	queue. "
	^ [accessProtect
		critical: ["Consume the number of elements = excessive signals."
			contentsArray size
				timesRepeat: [readSynch wait].
			"Remove all elements into a collection."
			contentsArray
				removeAllSuchThat: [:v | true]]] valueUninterruptably