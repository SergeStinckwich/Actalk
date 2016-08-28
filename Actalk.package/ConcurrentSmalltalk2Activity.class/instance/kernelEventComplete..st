events
kernelEventComplete: aMessage 
	"Compute the post action method if existing."
	| postSelector |
	postSelector := ('postOF' , aMessage selector) asSymbol.
	(bself respondsTo: postSelector)
		ifTrue: [bself perform: postSelector withArguments: aMessage arguments].
	super kernelEventComplete: aMessage