script
oneExcept: aThief 
	"Return a thief (victim) requested.
	It cannot be the requester.
	Return nil 
	if only one thief is remaining."
	^ thieves size > 1
		ifTrue: [thieves oneRandomExcept: aThief]