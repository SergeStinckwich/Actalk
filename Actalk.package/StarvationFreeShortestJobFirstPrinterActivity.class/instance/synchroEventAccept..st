synchro events
synchroEventAccept: anInvocation 
	"When accepting one printing invocation,
	decrease job size of all pending 
	activations with a prior arrival time."
	"This ensures that there won't be starvation."
	super synchroEventAccept: anInvocation.
	anInvocation
		ifSelector: #print:length:
		do: [self
				forAllPending: #print:length:
				do: [:invocation | invocation arrivalTime < anInvocation arrivalTime
						ifTrue: [invocation decrJobSize]]]