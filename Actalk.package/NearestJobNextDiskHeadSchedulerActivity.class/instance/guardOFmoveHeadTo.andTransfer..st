guards
guardOFmoveHeadTo: destinationTrackNumber andTransfer: data 
	^ (super guardOFmoveHeadTo: destinationTrackNumber andTransfer: data)
		and: [self
				noPending: #moveHeadTo:andTransfer:
				with: [:invocation | (self
						distanceTo: (invocation arg: 1))
						< (self
								distanceTo: (currentInvocation arg: 1))]]