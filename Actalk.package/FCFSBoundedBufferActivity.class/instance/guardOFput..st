guards
guardOFput: item
	"Only one put at once and the buffer should not be full.
	Also ensures message ordering preservation (no prior pending put:)."

	^(self noCurrent: #put:)
		and: [self numberOfElements < maxSize
			and: [self noPending: #put: priorTo: currentInvocation arrivalTime]]