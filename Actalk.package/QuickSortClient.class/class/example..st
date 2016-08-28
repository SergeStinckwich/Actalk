example
example: size 
	"self example: 100"
	"Sort a random collection of a certain size."
	| aCollection random |
	aCollection := OrderedCollection new.
	random := Random new.
	size
		timesRepeat: [aCollection add: (random next * size) rounded].
	^ self new active sort: aCollection