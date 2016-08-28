example
checkUntil: max 
	"self checkUntil: 100"
	| two |
	two := (self new n: 2) active.
	"Create the first prime integer/filter in the chain."
	2
		to: max
		do: [:i | "Successive integers are sent into the chain."
			two filter: i]