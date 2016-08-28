accessing
value
	"Consult the value of a future by waiting onto its semaphore.
	Then reset 
	the semaphore afterwards for next access."
	semaphore wait; signal.
	^ value