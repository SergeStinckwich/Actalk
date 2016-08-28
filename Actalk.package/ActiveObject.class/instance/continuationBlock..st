continuation creation
continuationBlock: aBlock 
	"Create a block continuation active object with the block (closure) as a 
	behavior.
	The block has two arguments: the replied value, and the 
	reference to the block continuation active object (usually named me)."
	"See class BlockContinuation."
	^ (BlockContinuation new behaviorBlock: aBlock) active