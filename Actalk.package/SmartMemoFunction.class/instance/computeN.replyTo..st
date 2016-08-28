script
computeN: n replyTo: r 
	"The actual computation must be specified by the concrete class."
	^ self subclassResponsibility