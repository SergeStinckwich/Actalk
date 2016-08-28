private routines
think
	| delay |
	delay := (Random new next * 5) rounded + 1.
	Transcript show: self printString , ' thinks during ' , delay printString , ' seconds.';
		 cr.
	(Delay forSeconds: delay) wait