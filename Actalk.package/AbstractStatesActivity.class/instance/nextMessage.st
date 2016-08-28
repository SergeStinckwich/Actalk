message handling
nextMessage
	"Look into the mailbox for the first message matching one of the enabled 
	selectors. "
	"Note that this is an abstract class.
	The subclass needs to define the 
	actual assignment of the set of enabled selectors."
	^ self mailBox
		firstMessageWithCondition: [:message | enabledSelectors includes: message selector]