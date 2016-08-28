guards
guardOFget
	"Only one get at once and the buffer should be not empty."
	^ (self current: #get)
			= 0
		and: [self numberOfElements > 0]