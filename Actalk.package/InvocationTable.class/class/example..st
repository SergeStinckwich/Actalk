example
example: n 
	"self example: 5"
	(self new
		initializeNumberForks: n
		numberPhilosophersPerFork: 2
		numberSteps: 3) active start