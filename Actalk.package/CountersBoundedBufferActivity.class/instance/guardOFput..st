guards
guardOFput: item 
	"Only one put at once and the buffer should not be full."
	^ (self current: #put:)
			= 0
		and: [self numberOfElements < maxSize]