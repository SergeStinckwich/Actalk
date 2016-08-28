body
body
	"Body: do numberSteps times his life steps, that is: think, enter the room 
	to eat, and exit."
	"Note that this active object class has no script method as it receives no 
	message. "
	1
		to: numberSteps
		do: [:i | 
			self think.
			Transcript show: self printString , ' wants to eat for the ' , i printString , 'th time and therefore to enter the room.';
				 cr.
			room enter: aself.
			Transcript show: self printString , ' wants to pick up his left fork: ' , leftFork printString;
				 cr.
			leftFork pickUpBy: aself.
			Transcript show: self printString , ' picked up his left fork: ' , leftFork printString;
				 cr.
			Transcript show: self printString , ' wants to pick up his right fork: ' , rightFork printString;
				 cr.
			rightFork pickUpBy: aself.
			Transcript show: self printString , ' picked up his right fork: ' , rightFork printString;
				 cr.
			self eat.
			leftFork putDownBy: aself.
			Transcript show: self printString , ' has put down his left fork: ' , leftFork printString;
				 cr.
			rightFork putDownBy: aself.
			Transcript show: self printString , ' has put down his right fork: ' , rightFork printString;
				 cr.
			room exit: aself]