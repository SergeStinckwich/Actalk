body
body
	"Body: do numberSteps times his life steps, that is: think and then read."
	"Note that this active object class has no script method as it receives no 
	message. "
	numberSteps
		timesRepeat: [self think.
			Transcript show: self printString , ' wants to read ' , book printString;
				 cr.
			(book readBy: aself) value]