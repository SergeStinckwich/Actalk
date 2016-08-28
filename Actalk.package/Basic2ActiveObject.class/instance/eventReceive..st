events
eventReceive: aMessage 
	"This method is called once the active object has received a new message 
	(and before actual enqueueing)."
	"This method may be redefined in subclasses."
	"Default behavior is empty."
	"Below are possible examples of use to:

trace:
	Transcript show: self 
	printString , ' receive (' , aMessage compactPrintString , ')'; 
	cr.

schedule:
	Processor yield.

broadcast change to dependents (e.g., 
	useful for MVC interface):
	self changed: #eventReceive with: 
	aMessage.

step:
	self halt.
	"
	^ self