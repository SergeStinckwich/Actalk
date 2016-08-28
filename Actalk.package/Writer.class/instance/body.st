body
body
	"Body: do numberSteps times his life steps, that is: think and then write."
	"Note that this active object class has no script method as it receives no 
	message. "
	numberSteps
		timesRepeat: [self think.
			Transcript show: self printString , ' wants to write ' , book printString;
				 cr.
			(book writeBy: aself) value]