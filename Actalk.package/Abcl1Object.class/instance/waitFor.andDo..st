wait construct
waitFor: arrayOfSelectors andDo: aBlock 
	"Look into the mailbox for the first message matching one of the 
	selectors,
	and then accept it.
	It is blocking and suspends until it finds 
	some matching message.
	(This means it suspends onto incoming messages 
	as long as necessary)."
	^ aBlock valueWithArguments: (aself mailBox
			firstMessageWithCondition: [:message | arrayOfSelectors includes: message selector]) arguments