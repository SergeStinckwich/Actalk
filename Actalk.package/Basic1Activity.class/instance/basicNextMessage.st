message handling
basicNextMessage
	"Remove next message from the mailbox."
	"Note that this fetching is suspended until the mailbox is not 
	empty,
	thanks to the SharedQueue standard class."
	"This method is basic, that is it must not be redefined."
	^ self mailBox next