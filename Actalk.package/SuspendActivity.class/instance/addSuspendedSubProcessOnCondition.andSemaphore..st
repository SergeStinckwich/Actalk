suspension management
addSuspendedSubProcessOnCondition: resumptionConditionBlock andSemaphore: aSemaphore 
	"Create and add one association for a given subprocess resumption 
	condition and waiting semaphore."
	"association = <key: resumption condition block , value: semaphore on 
	which the process waits>."
	suspendedSubProcessAssociationList
		addLast: (Association new key: resumptionConditionBlock value: aSemaphore)