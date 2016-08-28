script
writeBy: writer 
	| delay |
	delay := (Random new next * 5) rounded + 1.
	Transcript show: writer printString , ' starts writing ' , self printString , ' during ' , delay printString , ' seconds.';
		 cr.
	(Delay forSeconds: delay) wait.
	Transcript show: writer printString , ' stopped writing ' , self printString;
		 cr