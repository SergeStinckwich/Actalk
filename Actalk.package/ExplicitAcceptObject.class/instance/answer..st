answer constructs
answer: arrayOfSelectors 
	"Accept and answer to some specific pattern of message (among the 
	array of selectors).
	Wait until it can find one and return the value."
	^ self activity answer: arrayOfSelectors