events
eventAccept: aMessage 
	"This method is called when the active object accepts a message."
	"This method may be redefined in subclasses."
	"Default behavior is empty."
	"Below are possible examples of use to:

trace:
	Transcript show: self 
	printString , ' accept (' , aMessage compactPrintString , ')'; 
	cr.

schedule:
	Processor yield.

broadcast change to dependents (e.g., 
	useful for MVC interface):
	self changed: #eventAccept with: 
	aMessage.

step:
	self halt.
	"
	^ self