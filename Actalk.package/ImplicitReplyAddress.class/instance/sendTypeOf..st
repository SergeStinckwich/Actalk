message dispatching
sendTypeOf: aMessage 
	"Assume that every message sent should create a future to hold the 
	reply.
	The future is returned (as for a future type message passing)."
	^ #future