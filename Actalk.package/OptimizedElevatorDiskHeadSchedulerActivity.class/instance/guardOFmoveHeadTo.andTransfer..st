guards
guardOFmoveHeadTo: destinationTrackNumber andTransfer: data 
	^ (self noCurrent: #moveHeadTo:andTransfer:)
		and: [self
				noPending: #moveHeadTo:andTransfer:
				with: [:invocation | invocation distance < currentInvocation distance]]