*actalk
& anArray 
	"Intersection of two arrays: select elements of first collection that also 
	belong to second one."
	^ self
		select: [:element | anArray includes: element]