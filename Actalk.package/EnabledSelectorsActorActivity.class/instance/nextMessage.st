message handling
nextMessage
	"Look into the mailbox for the first message matching one of the enabled 
	selectors. "
	^ self mailBox
		firstMessageWithCondition: [:message | enabledSelectors includes: message selector]