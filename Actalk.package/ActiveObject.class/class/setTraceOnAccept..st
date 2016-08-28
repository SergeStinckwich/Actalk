event tracing
setTraceOnAccept: setOrUnset 
	"Set (or unset) tracing facility for this class onto the event accept.
	It 
	does not check whenever an event methods has already been defined.
	It 
	simply adds it or removes it."
	setOrUnset
		ifTrue: [self compile: 'eventAccept: aMessage
	Transcript show: self printString , '' accept ('' , aMessage compactPrintString , '')''; cr' classified: #events]
		ifFalse: [self removeSelector: #eventAccept:]