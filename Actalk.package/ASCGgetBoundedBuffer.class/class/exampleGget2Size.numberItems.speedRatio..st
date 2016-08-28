example
exampleGget2Size: maxSize numberItems: numberItems speedRatio: ratio 
	"self exampleGget2Size: 3 numberItems: 8 speedRatio: 3"
	"self exampleGget2Size: 3 numberItems: 8 speedRatio: 1/3"
	"Note that there is no guarantee that all gget requests will be served.
	As 
	a result the bounded buffer may stop before all producer and consumer 
	requests had been served."
	| buffer producer consumer |
	buffer := (self new: maxSize)
				active: ASCGget2BoundedBufferActivity.
	producer := (Producer new buffer: buffer delay: 1) active.
	consumer := (Consumer new buffer: buffer delay: ratio) active.
	producer runPut: numberItems.
	consumer runGget: numberItems