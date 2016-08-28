guards
guardOFprint: job length: length group: group
	"One printing job at a time and no pending print invocation with a higher priority
	or with the same priority but with some prior arrival time."

	^(self noCurrent: #print:length:group:)
		and: [self noPending: #print:length:group: with: [:invocation |
				(PriorityTable at: (invocation arg: 3)) > (PriorityTable at: group)
					or: [(PriorityTable at: (invocation arg: 3)) = (PriorityTable at: group)
						and: [invocation arrivalTime < currentInvocation arrivalTime]]]]