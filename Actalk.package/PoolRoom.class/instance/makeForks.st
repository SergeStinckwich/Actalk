initialize
makeForks
	"Create and initialize the n forks."
	forks := Array new: n.
	1
		to: n
		do: [:i | forks at: i put: (PoolFork new number: i) active]