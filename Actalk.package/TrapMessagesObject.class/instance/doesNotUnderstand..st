message passing
doesNotUnderstand: aMessage 
	"A message sent to a trap messages object should trigger an error 
	(message unrecognized)
	and be reinterpreted in some way as specified 
	by the subclass."
	^ self subclassResponsibility