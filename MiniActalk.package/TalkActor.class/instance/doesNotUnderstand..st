message sends
doesNotUnderstand: aMessage

	| sel |
	sel := aMessage selector. 
	(Object respondsTo: sel)
		ifFalse: [ ^ self asynchronousSend: aMessage ] 
		ifTrue: [	
				Transcript show: 'Does not understand ',  aMessage selector printString ; cr.
				self class compile: (Object sourceCodeAt: sel) classified: 'copied down'.
				^ aMessage sentTo: self.]