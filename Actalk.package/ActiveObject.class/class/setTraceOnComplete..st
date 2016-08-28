event tracing
setTraceOnComplete: setOrUnset 
	"Set (or unset) tracing facility for this class onto the event complete.
	It 
	does not check whenever an event methods has already been defined.
	It 
	simply adds it or removes it."
	setOrUnset
		ifTrue: [self compile: 'eventComplete: aMessage
	Transcript show: self printString , '' complete ('' , aMessage compactPrintString , '')''; cr' classified: #events]
		ifFalse: [self removeSelector: #eventComplete:]