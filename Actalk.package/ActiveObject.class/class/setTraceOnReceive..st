event tracing
setTraceOnReceive: setOrUnset 
	"Set (or unset) tracing facility for this class onto the event receive.
	It 
	does not check whenever an event methods has already been defined.
	It 
	simply adds it or removes it."
	setOrUnset
		ifTrue: [self compile: 'eventReceive: aMessage
	Transcript show: self printString , '' receive ('' , aMessage compactPrintString , '')''; cr' classified: #events]
		ifFalse: [self removeSelector: #eventReceive:]