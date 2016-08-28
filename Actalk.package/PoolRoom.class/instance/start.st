script
start
	"Initialize and start the forks and philosophers active objects."
	"Note that this method must be a script method (and not a private 
	initialization method)
	because the room active object must have been 
	created prior to creation of philosophers."
	self makeForks.
	self makePhilosophers