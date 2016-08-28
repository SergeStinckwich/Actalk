guards
guardOFget
	"Only one get at once and the buffer should be not empty.
	Also ensures message ordering preservation (no prior pending get)."

	^(self noCurrent: #get)
		and: [self numberOfElements > 0
			and: [self noPending: #get priorTo: currentInvocation arrivalTime]]