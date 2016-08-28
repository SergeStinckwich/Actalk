synchro events
synchroEventReceive: anInvocation 
	"Set up the waking time of a wake up invocation."
	super synchroEventReceive: anInvocation.
	anInvocation
		ifSelector: #wakeUpAfter:
		do: [Transcript show: self printString , ' sets wake up time ' , (anInvocation arg: 1) printString , ' ticks later.';
				 cr.
			anInvocation wakeUpTime: self currentTime
					+ (anInvocation arg: 1)]