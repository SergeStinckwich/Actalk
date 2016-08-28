message handling
unBlockingAnswer: arrayOfSelectors 
	"Look into the mailbox for the first message matching one of the 
	selectors,
	and then accept it.
	As opposed to method answer: which is 
	blocking, unBlockingAnswer: is not.
	If a matching message is found, 
	accept it and return true.
	Otherwise return false."
	"Warning: be cautious when using unblocking answer statements
	within 
	an endless body loop.
	The process may keep the Processor almost 
	undefinitely.
	You have to insert 'Processor yield' statements or use the 
	time slicing facility."
	| message |
	message := self mailBox
				checkFirstMessageWithCondition: [:msg | arrayOfSelectors includes: msg selector].
	^ message isNil
		ifTrue: [false]
		ifFalse: [self acceptMessage: message.
			true]