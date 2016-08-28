atalk category
doesNotUnderstand: aMessage

	| sel category |
	sel := aMessage selector. 
	Transcript show: 'Does not understand ',  aMessage selector printString ; cr.
	category := (Object organization categoryOfElement: sel).
	self class compile: (Object sourceCodeAt: sel) classified: category.
	^ aMessage sentTo: self.