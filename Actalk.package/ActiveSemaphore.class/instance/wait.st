script
wait
	"Sender wait onto the semaphore if no signal is in excess."
	"When the semaphore is signaled sender receives a signal message."
	numberExcessSignals > 0
		ifTrue: ["If there are signals in excess, then current sender is 
			immediately signaled."
			self sender signal.
			"And we decrement number of signals in excess."
			numberExcessSignals := numberExcessSignals - 1]
		ifFalse: ["Otherwise, current sender is enqueued onto the waiting queue."
			waitingProcessQueue addLast: self sender]