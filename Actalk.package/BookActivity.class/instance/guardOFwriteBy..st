guards
guardOFwriteBy: writer 
	"Only one writer and no reader."
	^ (self current: #writeBy:)
			= 0
		and: [(self current: #readBy:)
				= 0]