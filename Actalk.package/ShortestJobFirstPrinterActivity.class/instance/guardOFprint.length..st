guards
guardOFprint: job length: length
	"One printing job at a time and no pending print invocation with a shorter job size
	or with the same size but with some prior arrival time."

	^(self noCurrent: #print:length:)
		and: [self noPending: #print:length: with: [:invocation |
				invocation jobSize < currentInvocation jobSize
					or: [invocation jobSize = currentInvocation jobSize
						and: [invocation arrivalTime < currentInvocation arrivalTime]]]]