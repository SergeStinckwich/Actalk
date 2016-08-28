event tracing
setTraceOnSend: setOrUnset 
	"Set (or unset) tracing facility for this class onto the event send.
	It does 
	not check whenever an event methods has already been defined.
	It 
	simply adds it or removes it."
	setOrUnset
		ifTrue: [self compile: 'eventSend: aMessage to: anAddress
	Transcript show: self printString , '' send ('' , aMessage compactPrintString , '') to '' , anAddress printString; cr' classified: #events]
		ifFalse: [self removeSelector: #eventSend:to:]