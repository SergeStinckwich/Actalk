continuation creation
singleReplyContinuationBlock: aBlock 
	"As for method continuationBlock:, except that the block continuation 
	active object will accept a single reply message."
	"See class SingleReplyBlockContinuation."
	^ (SingleReplyBlockContinuation new behaviorBlock: aBlock) active