example
exampleGgetSize: maxSize numberItems: numberItems speedRatio: ratio 
	"self exampleGgetSize: 3 numberItems: 8 speedRatio: 3"
	"self exampleGgetSize: 3 numberItems: 8 speedRatio: 1/3"
	"Note that there is no guarantee that all gget requests will be served.
	As 
	a result the bounded buffer may stop before all producer and consumer 
	requests had been served.
	Remind also that we only specify that gget 
	cannot be accepted after COMPLETION of a put.
	Thus a gget could be 
	accepted after acceptance of a put but before its completion if it gets 
	suspended. "
	| buffer producer consumer |
	buffer := (self new: maxSize) active.
	producer := (Producer new buffer: buffer delay: 1) active.
	consumer := (Consumer new buffer: buffer delay: ratio) active.
	producer runPut: numberItems.
	consumer runGget: numberItems