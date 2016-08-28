example
starvationFreeExample: n 
	"self starvationFreeExample: 5"
	((self new
		initializeNumberForks: n
		numberPhilosophersPerFork: 2
		numberSteps: 3)
		active: StarvationFreeTableActivity) start