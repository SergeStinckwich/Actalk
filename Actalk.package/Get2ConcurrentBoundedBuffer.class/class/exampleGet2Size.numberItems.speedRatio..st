example
exampleGet2Size: maxSize numberItems: numberItems speedRatio: ratio
	"self exampleGet2Size: 3 numberItems: 8 speedRatio: 3"
	"self exampleGet2Size: 3 numberItems: 8 speedRatio: 1/3"

	| buffer producer consumer |
	buffer := (self new: maxSize) active.
	producer := (Producer new buffer: buffer delay: 1) active.
	consumer := (Consumer new buffer: buffer delay: ratio) active.
	producer runPut: numberItems.
	consumer runGet2: numberItems