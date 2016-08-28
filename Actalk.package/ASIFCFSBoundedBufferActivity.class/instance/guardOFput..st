guards
guardOFput: item 
	"Only one put at once.
	Also ensures message ordering preservation (no 
	prior pending put:)."
	^ (self noCurrent: #put:)
		and: [self noPending: #put: priorTo: currentInvocation arrivalTime]