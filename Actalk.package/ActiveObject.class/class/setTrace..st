event tracing
setTrace: setOrUnset 
	"Set (or unset) tracing facilities for this class onto all four 
	events.
	(aClass setTrace: true) to set, (aClass setTrace: false) to unset.
	It 
	does not check whenever some event methods have already been 
	defined.
	It simply adds them or removes them."
	self setTraceOnReceive: setOrUnset;
		 setTraceOnAccept: setOrUnset;
		 setTraceOnComplete: setOrUnset;
		 setTraceOnSend: setOrUnset