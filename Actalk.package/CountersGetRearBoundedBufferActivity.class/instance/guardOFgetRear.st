guards
guardOFgetRear
	"Method getRear removes an element at rear and does not conflict with 
	get removal at head.
	Meanwhile method getRear excludes itself as well 
	as method put:.
	Moreover the buffer should have at least one more 
	element than current number
	of activated get.
	Note that this leads to 
	maximal concurrency:
	methods get and getRear may be active 
	concurrently if the buffer has more than one element."
	^ (self current: #getRear)
			= 0
		and: [(self current: #put:)
					= 0
				and: [self numberOfElements
						> (self current: #get)]]