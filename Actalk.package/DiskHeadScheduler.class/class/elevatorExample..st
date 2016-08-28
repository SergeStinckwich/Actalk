example
elevatorExample: numberOfMoves 
	"self elevatorExample: 20"
	| random trackNumber disk |
	random := Random new.
	disk := self new active: ElevatorDiskHeadSchedulerActivity.
	1
		to: numberOfMoves
		do: [:i | 
			trackNumber := (random next * NumberOfTracks) truncated.
			disk moveHeadTo: trackNumber andTransfer: i]