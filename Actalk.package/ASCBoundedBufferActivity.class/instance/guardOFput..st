guards
guardOFput: item 
	"Only one put at once."
	^ (self current: #put:)
		= 0