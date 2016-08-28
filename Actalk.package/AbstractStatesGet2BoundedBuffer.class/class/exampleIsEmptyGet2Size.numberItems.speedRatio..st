example
exampleIsEmptyGet2Size: maxSize numberItems: numberItems speedRatio: ratio
	"self exampleIsEmptyGet2Size: 3 numberItems: 8 speedRatio: 3"
	"self exampleIsEmptyGet2Size: 3 numberItems: 8 speedRatio: 1/3"

	| buffer producer consumer |
	buffer := (self new: maxSize) active: AbstractStatesIsEmptyGet2BoundedBufferActivity.
	producer := (Producer new buffer: buffer delay: 1) active.
	consumer := (Consumer new buffer: buffer delay: ratio) active.
	producer runPut: numberItems.
	consumer runIsEmptyGet2: numberItems