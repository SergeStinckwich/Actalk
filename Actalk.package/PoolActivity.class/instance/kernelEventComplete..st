events
kernelEventComplete: aMessage 
	"Check if some post action has been specified.
	If the case, compute it just 
	after performing the message (before final completion).
	Reset the post 
	action block/flag for next message."
	"Note that this implementation does not provide a complete solution to the 
	management of post actions.
	But this is sufficient thanks to the 
	assumption that message computation is atomic.
	As a consequence no 
	other message computation may rewrite current postBlock variable 
	before completion of current message computation.
	See class 
	ConcurrentSmalltalkActivity for a complete solution."
	postBlock isNil
		ifFalse: [postBlock value.
			postBlock := nil].
	super kernelEventComplete: aMessage