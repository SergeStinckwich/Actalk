accessing
reply: aValue 
	"Set the value of a future."
	"reply: is the method selector to set the value of the future 
	object
	because a future object is intended to be used primarily
	as an 
	implicit reply destination of a future type (eager reply) message send."
	value := aValue.
	semaphore signal