accessing by index
atIndex: i 
	"Look for and fetch the ith message in the mailbox.
	Suspend until there 
	are at least i messages."
	"WARNING: this method is safe if only one activity process at a time 
	makes such access.
	It is unsafe for concurrent use by many activity 
	processes
	(because it makes assumption on the monotony of the 
	mailbox). "
	"The manipulation of readSynch semaphore is somewhat tricky.
	We need 
	to because we want to suspend until a new message comes
	BUT we don't 
	want to decrement the number of items in the queue
	(until we actually 
	find and remove a matching message)."
	"We need to record number of waits we may generate on readSynch 
	semaphore "
	| numberOfWaits |
	numberOfWaits := 0.
	"in order to restore them afterwards."
	"This is because we need to keep the number of excessive signals which 
	indicate the number of messages in the mailbox."
	[[accessProtect
		critical: [i > contentsArray size]] valueUninterruptably]
		whileTrue: [readSynch wait.
			"Wait for next incoming message."
			numberOfWaits := numberOfWaits + 1].
	numberOfWaits
		timesRepeat: [readSynch signal].
	"Restore the semaphore excessive signals."
	^ self basicAtIndex: i