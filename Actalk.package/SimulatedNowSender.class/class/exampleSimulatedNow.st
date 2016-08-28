example
exampleSimulatedNow
	"self exampleSimulatedNow"

	^self new active
		simulatedNowSend;
		reply: #second