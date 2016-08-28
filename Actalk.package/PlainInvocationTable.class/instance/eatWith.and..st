script
eatWith: i and: j
	"Empty body (only tracing and random sleeping), only synchronization."

	| delay |
	delay := (Random new next * 5) rounded + 1.
	Transcript show: self sender printString , ' eats with forks '
			, i printString , ' and ' , j printString
			, ' during ' , delay printString , ' seconds.'; cr.
	(Delay forSeconds: delay) wait