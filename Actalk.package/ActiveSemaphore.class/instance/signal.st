script
signal
	"Signal the semaphore in order to signal/free first waiting process if 
	any. "
	waitingProcessQueue isEmpty
		ifTrue: ["If no process is waiting, then increment the number of signals 
			in excess."
			numberExcessSignals := numberExcessSignals + 1]
		ifFalse: ["Otherwise, signal first waiting process."
			waitingProcessQueue removeFirst signal]