events
eventComplete: aMessage 
	"This method is called once the active object completed computation of a 
	message. "
	"This method may be redefined in subclasses."
	"Default behavior is empty."
	"Below are possible examples of use to:

trace:
	Transcript show: self 
	printString , ' complete (' , aMessage compactPrintString , ')'; 
	cr.

schedule:
	Processor yield.

broadcast change to dependents (e.g., 
	useful for MVC interface):
	self changed: #eventComplete with: 
	aMessage.

step:
	self halt.
	"
	^ self