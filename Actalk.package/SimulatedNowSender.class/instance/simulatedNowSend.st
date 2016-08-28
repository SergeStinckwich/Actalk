script
simulatedNowSend
	"Simulated now type message send to the receiver."
	"Create the identifier active object. It will forward the reply to myself."
	| newObject |
	newObject := (SimulatedForwarder new forwardTo: aself) active.
	"Past type message send."
	receiver computeAndReplyTo: newObject.
	"Wait for the right reply."
	self
		waitFor: #(#reply: )
		where: [:message | message sender = newObject]
		andDo: [:value | Transcript show: self printString , ' received waiting value: ' , value printString;
				 cr]