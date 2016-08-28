body
body
	"Body: a philosopher does numberSteps times his life steps, that is: think 
	and eat."
	"Note that this active object class has no script method as it receives no 
	message. "
	1
		to: numberSteps
		do: [:i | 
			self think.
			Transcript show: self printString , ' wants to eat for the ' , i printString , 'th time and requests forks ' , leftForkPosition printString , ' and ' , rightForkPosition printString;
				 cr.
			"He requests his forks. Note that he waits (value) for the 
			acknowledgement. "
			(table
				pickUp: leftForkPosition
				and: rightForkPosition
				by: aself) value.
			self eat.
			"Note that when releasing forks, he does not need to wait for 
			acknowledgement to proceed."
			table
				putDown: leftForkPosition
				and: rightForkPosition
				by: aself.
			Transcript show: self printString , ' has finished eating and has released forks ' , leftForkPosition printString , ' and ' , rightForkPosition printString;
				 cr]