script
consultAndReplyTo: r 
	"As for asynchronous message passing, returning reply needs to be made 
	explicit.
	The reply destination (r) is passed as an argument."
	r reply: contents