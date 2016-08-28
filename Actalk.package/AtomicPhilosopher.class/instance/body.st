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
			"He requests his forks and eats. Note that he waits (value) for 
			the acknowledgement."
			(table eatWith: leftForkPosition and: rightForkPosition) value.
			Transcript show: self printString , ' has finished eating and releases forks ' , leftForkPosition printString , ' and ' , rightForkPosition printString;
				 cr]