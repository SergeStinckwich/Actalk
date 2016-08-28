events
eventSend: aMessage to: anAddress 
	"This method is called once the active object has sent a message (and just 
	before it actually gets received)
	to an active object whose address class 
	is WithSenderAddress or InvocationAddress (or one of their 
	subclasses).
	See method receiveMessage: of address class 
	WithSenderAddress. "
	"This method may be redefined in subclasses."
	"Default behavior is empty."
	"Below are possible examples of use to:

trace:
	Transcript show: self 
	printString , ' send (' , aMessage compactPrintString , ') to ' , anAddress 
	printString; cr.

schedule:
	Processor yield.

broadcast change to 
	dependents (e.g., useful for MVC interface):
	self changed: #eventSend 
	with: aMessage.

step:
	self halt.
	"
	^ self