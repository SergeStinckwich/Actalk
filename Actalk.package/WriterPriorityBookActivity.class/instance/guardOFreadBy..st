guards
guardOFreadBy: reader 
	"Priority to writers, that is no read if there is a pending write."
	^ (super guardOFreadBy: reader)
		and: [(self pending: #writeBy:)
				= 0]