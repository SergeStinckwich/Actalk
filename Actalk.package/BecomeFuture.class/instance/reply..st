accessing
reply: aValue 
	"Become the value, and then free all pending value requests."
	"reply: is the method selector to set the value of the future 
	object
	because a future object is intended to be used primarily
	as an 
	implicit reply destination of a future type (eager reply) message send."
	"Warning: primitive become: will fail onto immediate objects (e.g., 
	integers). "
	"Note: we create a temporary variable (sem) to refer to the 
	semaphore,
	because after the become has been performed, the new 
	identity of self (aValue)
	cannot access anymore to instance variables of 
	the future."
	| sem |
	sem := semaphore.
	self become: aValue.
	[sem isEmpty]
		whileFalse: [sem signal]