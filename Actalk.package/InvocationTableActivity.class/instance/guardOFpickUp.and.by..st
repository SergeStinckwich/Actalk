guards
guardOFpickUp: i and: j by: philosopher
	"Both forks must be available."

	^(forksAvailability at: i) & (forksAvailability at: j)