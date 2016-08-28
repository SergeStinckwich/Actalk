suspension management
lookForFirstResumeableSubProcess
	"Look for the first suspended subprocess whose resumption condition has 
	become true.
	If one is found, return the corresponding association, 
	otherwise return nil."
	"association = <key: resumption condition block , value: semaphore on 
	which the process waits>."
	^ suspendedSubProcessAssociationList isEmpty
		ifFalse: ["Detect if there is a suspended subprocess whose resumption 
			condition block value is true."
			suspendedSubProcessAssociationList
				detect: [:association | association key value]
				ifNone: []]