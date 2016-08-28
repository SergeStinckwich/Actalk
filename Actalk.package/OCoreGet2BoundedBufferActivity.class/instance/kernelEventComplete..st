events
kernelEventComplete: aMessage
	"Compute one suspended request if condition is fullfilled."
	"May resume a suspended get2 after resuming a suspended get.
	But the problem of fairness between get and get2 requests is not very well handled."

	super kernelEventComplete: aMessage.
	(get2Queue isEmpty not and: [bself hasAtLeastTwoElements])
		ifTrue: [self acceptMessage: get2Queue removeFirst]