initialize
makePhilosophers
	"Create and initialize the n philosophers."
	philosophers := Array new: n.
	1
		to: n
		do: [:i | philosophers at: i put: (PoolPhilosopher new
					number: i
					room: aself
					leftFork: (forks at: i)
					rightFork: (forks at: i \\ n + 1)
					numberSteps: numberSteps) active]