printing
printOn: aStream 
	"When value is set, print out as its value."
	isReady
		ifTrue: [value printOn: aStream]
		ifFalse: [super printOn: aStream]