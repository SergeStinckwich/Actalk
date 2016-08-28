*actalk
removeOneRandom
	"Remove pseudo-randomly one element of the bag."

	^self removeAtIndex:
		1 + ((Random new next) * (self size)) truncated