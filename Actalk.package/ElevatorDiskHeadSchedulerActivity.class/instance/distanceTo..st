private
distanceTo: destinationTrackNumber
	"Computes distance between current and possible next position, weighted by possible change of direction."

	destinationTrackNumber = currentTrackNumber
		ifTrue: [^0].
	isGoingUp & (destinationTrackNumber > currentTrackNumber)
		ifTrue: [^destinationTrackNumber - currentTrackNumber].
	(isGoingUp not) & (destinationTrackNumber < currentTrackNumber)
		ifTrue: [^currentTrackNumber - destinationTrackNumber].
	isGoingUp & (destinationTrackNumber < currentTrackNumber)
		ifTrue: [^NumberOfTracks * 2 - destinationTrackNumber - currentTrackNumber].
	(isGoingUp not) & (destinationTrackNumber > currentTrackNumber)
		ifTrue: [^currentTrackNumber + destinationTrackNumber].
	self error: 'Strange case happens...'