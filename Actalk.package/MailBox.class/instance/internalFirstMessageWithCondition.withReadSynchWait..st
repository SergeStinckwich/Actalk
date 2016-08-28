accessing by condition
internalFirstMessageWithCondition: conditionBlock withReadSynchWait: isWait 
	"Look for the first message satisfying the condition.
	It is not blocking 
	and returns nil if no matching message is found."
	"The isWait flag tells if a wait onto the readSynch semaphore should be 
	produced
	in case a matching message has been found and will be 
	removed.
	Producing a wait is the usual case to tell that one item has 
	been removed.
	However in some case (call from the loop of method 
	firstMessageWithCondition:)
	the wait has already been produced, and 
	doing it again would suspend computation."
	| message |
	[accessProtect
		critical: [message := contentsArray
						detect: conditionBlock
						ifNone: [].
			message isNil
				ifFalse: ["If found, we remove (and then return) it."
					isWait
						ifTrue: ["We know we don't have to wait, but we want 
							to tell we remove one item."
							readSynch wait].
					contentsArray remove: message]]] valueUninterruptably.
	^ message