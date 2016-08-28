messaging
doesNotUnderstand: aMessage

	| sel f m |
	sel := aMessage selector. 
	(Object respondsTo: sel)
		ifFalse: [ f := Future new.
				m := FutureMessage selector: aMessage selector arguments: aMessage arguments.
				m future: f.
				self asynchronousSend: m.
				^ f] 
		ifTrue: [ Transcript show: 'Does not understand ',  aMessage selector printString ; cr.
				self class compile: (Object sourceCodeAt: sel) classified: 'copied down'.
				^ aMessage sentTo: self.]