accessing
postBlock: aBlock 
	"Add the post actions block into the dictionary at current (sub) process 
	key. "
	postBlockDictionary at: Processor activeProcess put: aBlock