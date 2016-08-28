example
example: n 
	"self example: 5"
	| semaphore |
	semaphore := self forMutualExclusion active.
	1
		to: n
		do: [:i | (ActiveProcess new number: i semaphore: semaphore) active start]