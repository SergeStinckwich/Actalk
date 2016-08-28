private routines
eat
	| delay |
	delay := (Random new next * 5) rounded + 1.
	Transcript show: self printString , ' eats with forks ' , leftFork printString , ' and ' , rightFork printString , ' during ' , delay printString , ' seconds.';
		 cr.
	(Delay forSeconds: delay) wait