script
reply: value
	"Behavior of the continuation when receiving a value: compute the block.
	Second argument is its address: aself, useful for recursion, passing its value, and for termination."

	behaviorBlock value: value value: aself