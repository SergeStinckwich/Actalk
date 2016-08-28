message handling
nextMessage
	"This is a parameter method, intended to be possibly redefined in 
	extension subclasses."
	"Fetch next message to be computed."
	"Default is by removing next message from the mailbox."
	"Note that this fetching is suspended until the mailbox is not 
	empty,
	thanks to the SharedQueue standard class."
	^ self mailBox next