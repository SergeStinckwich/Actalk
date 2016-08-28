script
getAndReplyTo: r 
	"Remove and return the first item.
	Do not check if buffer is empty."
	r reply: contents removeFirst