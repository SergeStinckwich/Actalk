answer constructs
unBlockingAnswer: arrayOfSelectors 
	"Accept and answer to some specific pattern of message (among the 
	array of selectors).
	As opposed to method answer: which is blocking, 
	unBlockingAnswer: is not.
	If some matching message is found, accept it 
	and return true.
	Otherwise return false."
	"Warning: be cautious when using unblocking answer statements
	within 
	an endless body loop.
	The process may keep the Processor almost 
	undefinitely.
	You have to insert 'Processor yield' statements or use the 
	time slicing facility."
	^ self activity unBlockingAnswer: arrayOfSelectors