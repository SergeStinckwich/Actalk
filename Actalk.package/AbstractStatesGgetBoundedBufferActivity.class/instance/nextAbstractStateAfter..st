state transition
nextAbstractStateAfter: selector 
	"We check if the bounded buffer is in partial state (that is neither 
	empty nor full) AND not after a put."
	^ ((bself isEmpty | bself isFull) not
			and: [selector ~= #put:])
		ifTrue: [#partialNotAfterPut]
		ifFalse: [super nextAbstractStateAfter: selector]