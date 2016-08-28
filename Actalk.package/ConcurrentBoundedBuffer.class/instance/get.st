script
get
	| item |
	item := array at: getIndex.
	getIndex := getIndex \\ array size + 1.
	(Delay forSeconds: 2) wait.
	^ item