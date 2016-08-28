script
readBy: reader 
	| delay |
	delay := (Random new next * 5) rounded + 1.
	Transcript show: reader printString , ' starts reading ' , self printString , ' during ' , delay printString , ' seconds.';
		 cr.
	(Delay forSeconds: delay) wait.
	Transcript show: reader printString , ' stopped reading ' , self printString;
		 cr