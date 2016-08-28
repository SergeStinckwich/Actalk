guards
guardOFwriteBy: writer 
	"Priority to readers, that is no write if there is a pending read."
	^ (super guardOFwriteBy: writer)
		and: [(self pending: #readBy:)
				= 0]