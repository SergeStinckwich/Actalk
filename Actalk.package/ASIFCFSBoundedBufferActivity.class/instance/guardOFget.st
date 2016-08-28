guards
guardOFget
	"Only one get at once.
	Also ensures message ordering preservation (no  
	prior pending get)."
	^ (self noCurrent: #get)
		and: [self noPending: #get priorTo: currentInvocation arrivalTime]