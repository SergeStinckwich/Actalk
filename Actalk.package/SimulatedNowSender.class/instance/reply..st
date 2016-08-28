script
reply: value 
	"Trying to fool the sender with another reply: message."
	Transcript show: self printString , ' received reply value: ' , value printString;
		 cr