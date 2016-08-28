script
nowSend
	"Original now type message send to the receiver."
	| value |
	value := receiver computeAndReplyTo: #now.
	Transcript show: self printString , ' received waiting value: ' , value printString;
		 cr