guards
guardOFreadBy: reader 
	"No writer allowed. But concurrent readers are allowed."
	^ (self current: #writeBy:)
		= 0