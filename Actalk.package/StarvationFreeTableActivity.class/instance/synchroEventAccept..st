synchro events
synchroEventAccept: anInvocation 
	"When accepting one eating invocation, signal all pending activations 
	with a prior arrival time
	and sharing forks with current one that they 
	have been skipped."
	super synchroEventAccept: anInvocation.
	anInvocation
		ifSelector: #eatWith:and:
		do: [self
				forAllPending: #eatWith:and:
				do: [:invocation | (invocation arrivalTime < anInvocation arrivalTime
							and: [self areForksSharedBetween: invocation and: anInvocation])
						ifTrue: [invocation skip]]]