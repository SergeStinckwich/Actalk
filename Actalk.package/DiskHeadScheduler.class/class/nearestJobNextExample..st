example
nearestJobNextExample: numberOfMoves 
	"self nearestJobNextExample: 20"
	| random trackNumber disk |
	random := Random new.
	disk := self new active: NearestJobNextDiskHeadSchedulerActivity.
	1
		to: numberOfMoves
		do: [:i | 
			trackNumber := (random next * NumberOfTracks) truncated.
			disk moveHeadTo: trackNumber andTransfer: i]