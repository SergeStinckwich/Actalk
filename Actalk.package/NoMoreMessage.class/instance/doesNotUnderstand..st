message handling
doesNotUnderstand: aMessage 
	"Signal by an error a message reaching me."
	self error: 'no more message: ' , aMessage printString