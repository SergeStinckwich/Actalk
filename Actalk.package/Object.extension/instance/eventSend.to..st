*actalk
eventSend: aMessage to: anAddress 
	"This method is called once the active object has sent a message (and just 
	before it actually gets received)
	to an active object whose address class 
	is WithSenderAddress or InvocationAddress (or one of their 
	subclasses).
	See method receiveMessage: of address class 
	WithSenderAddress. "
	"Default behavior for standard objects is empty because we just want to 
	avoid an error."
	^ self