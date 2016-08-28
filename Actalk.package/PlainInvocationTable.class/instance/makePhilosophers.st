initialize
makePhilosophers
	"Create and initialize the n * p philosophers.
	There are p philosophers for each position around the table."

	philosophers := Array new: n*p.
	1 to: n*p do:
		[:i | philosophers at: i put:
			(AtomicPhilosopher new
				number: i
				position: i - 1 \\ n + 1
				n: n
				table: aself
				numberSteps: numberSteps)
					active]