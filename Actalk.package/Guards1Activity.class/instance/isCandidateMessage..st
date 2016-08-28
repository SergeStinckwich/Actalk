message handling
isCandidateMessage: aMessage 
	"First naive implementation of guards."
	"A message is candidate for acceptance if its asociated guard evaluates to 
	true. "
	"Note that because of resending message which are not candidate,
	it does 
	not ensure message ordering preservation."
	^ self evaluateGuardForMessage: aMessage