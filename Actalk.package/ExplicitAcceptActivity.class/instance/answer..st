message handling
answer: arrayOfSelectors 
	"Look into the mailbox for the first message matching one of the 
	selectors,
	and then accept it.
	It is blocking and suspends until it finds 
	any matching message.
	(This means it suspends onto incoming messages 
	as long as necessary).
	Return the value of the computation."
	^ self
		acceptMessage: (self mailBox
				firstMessageWithCondition: [:message | arrayOfSelectors includes: message selector])