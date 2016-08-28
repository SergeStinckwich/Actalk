forks availability
toggleForks: i and: j
	"Switch availability of the given forks."

	forksAvailability
		at: i put: (forksAvailability at: i) not;
		at: j put: (forksAvailability at: j) not