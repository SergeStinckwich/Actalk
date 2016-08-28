example
exampleGgetSize: maxSize numberItems: numberItems speedRatio: ratio 
	"self exampleGgetSize: 3 numberItems: 8 speedRatio: 3"
	"self exampleGgetSize: 3 numberItems: 8 speedRatio: 1/3"
	"Note that there is no guarantee that all gget requests will be served.
	As 
	a result the bounded buffer may stop before all producer and consumer 
	requests had been served."
	super
		exampleGgetSize: maxSize
		numberItems: numberItems
		speedRatio: ratio