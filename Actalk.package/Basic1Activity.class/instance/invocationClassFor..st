default classes
invocationClassFor: aMessage 
	"This is a parameter method, intended to be possibly redefined in 
	extension subclasses."
	"It is used in order to make the invocation structure generic to possibly 
	record further information,
	e.g, sender, reply destination, arrival 
	time... managed by the system, e.g., class GenericSendAddress,
	as well as 
	defined by the user, e.g., job length in class 
	ShortestJobFirstPrinterActivity. "
	"The parameter is the message received, because dispatch to an 
	invocation class may depend on it.
	See examples of subclasses 
	OptimizedImplicitReplyActivity and ShortestJobFirstPrinterActivity."
	"Default invocation class is standard class Message."
	^ Message