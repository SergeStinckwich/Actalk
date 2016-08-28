wait construct
waitFor: arrayOfSelectors where: conditionBlock andDo: aBlock 
	"Look into the mailbox for the first message matching one of the 
	selectors
	AND satisfying the condition (a block whose first argument is 
	the candidate message).
	Then accept it.
	It is blocking and suspends until 
	it finds some matching message.
	(This means it suspends onto incoming 
	messages as long as necessary)."
	^ aBlock valueWithArguments: (aself mailBox
			firstMessageWithCondition: [:message | (arrayOfSelectors includes: message selector)
					and: [conditionBlock value: message]]) arguments