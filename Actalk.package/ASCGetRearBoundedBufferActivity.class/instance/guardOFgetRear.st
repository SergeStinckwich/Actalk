guards
guardOFgetRear
	"GetRear excludes all methods.
	Restrict get and getRear concurrency 
	because there could be only one element."
	^ (self current: #getRear)
			= 0
		and: [(self current: #get)
					= 0
				and: [(self current: #put:)
						= 0]]