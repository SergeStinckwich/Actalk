accessing by condition
checkFirstMessageWithCondition: conditionBlock 
	"Look for the first message satisfying the condition.
	As opposed to method 
	firstMessageWithCondition: which is 
	blocking,
	checkFirstMessageWithCondition: is not.
	If a matching message 
	is found it removes and returns it. Otherwise it returns nil."
	^ self internalFirstMessageWithCondition: conditionBlock withReadSynchWait: true