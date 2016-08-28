guards
guardOFget
	"Only one get at once."
	^ (self current: #get)
		= 0