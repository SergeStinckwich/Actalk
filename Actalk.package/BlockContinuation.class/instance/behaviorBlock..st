accessing
behaviorBlock: aBlock
	"Assign the block representing the behavior of the continuation."
	"The block must have one argument which represents the replied value,
	and a second argument which represents the address of the continuation active object itself
	(useful for recursion or passing its reference along)."

	behaviorBlock := aBlock