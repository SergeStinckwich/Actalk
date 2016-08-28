guards
guardOFprint: job length: length
	"One job at a time and no prior invocation still pending."

	^(self noCurrent: #print:length:)
		and: [self noPending: #print:length: priorTo: currentInvocation arrivalTime]