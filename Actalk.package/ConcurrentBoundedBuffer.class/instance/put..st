script
put: item 
	array at: putIndex put: item.
	putIndex := putIndex \\ array size + 1.
	(Delay forSeconds: 2) wait