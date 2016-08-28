script
postOFget
	"Reinitialization of the buffer occurs after returning the item."
	getIndex := getIndex \\ array size + 1.
	(Delay forSeconds: 2) wait