example
optimizedElevatorExample: numberOfMoves 
	"self optimizedElevatorExample: 20"
	| random trackNumber disk |
	random := Random new.
	disk := self new active: OptimizedElevatorDiskHeadSchedulerActivity.
	1
		to: numberOfMoves
		do: [:i | 
			trackNumber := (random next * NumberOfTracks) truncated.
			disk moveHeadTo: trackNumber andTransfer: i]