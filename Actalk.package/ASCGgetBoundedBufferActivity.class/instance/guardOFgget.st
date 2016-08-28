guards
guardOFgget
	"Not after a put and as for get."
	^ afterPut not
		and: [self guardOFget]