events
kernelEventComplete: aMessage
	"Compute one suspended request if condition is fullfilled."

	super kernelEventComplete: aMessage.
	(putQueue isEmpty not and: [bself isFull not])
		ifTrue:
			[self acceptMessage: putQueue removeFirst]
		ifFalse:
			[(getQueue isEmpty not and: [bself isEmpty not])
				ifTrue:
					[self acceptMessage: getQueue removeFirst]]