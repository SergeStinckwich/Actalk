message handling
isCandidateMessage: aMessage 
	"A message is candidate for acceptance if its asociated guard evaluates to 
	true. "
	"Note that checking the acceptance AND the accept synchronization 
	event (if the actual check is true) must be atomic."
	^ synchroMutualExclusion
		critical: [(self evaluateGuardForMessage: aMessage)
				and: [self synchroEventAccept: aMessage.
					true]]