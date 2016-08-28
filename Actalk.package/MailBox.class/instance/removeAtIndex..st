accessing by index
removeAtIndex: i 
	"Remove and return the ith message of the mailbox."
	"It does assume that there is at least i messages in the mailbox."
	"WARNING: this method is safe if only one activity process at a time 
	makes such access.
	It is unsafe for concurrent use by many activity 
	processes
	(because it makes assumption on the monotony of the 
	mailbox). "
	readSynch wait.
	"We assume that we don't have to wait, but we want to tell we remove 
	one item."
	^ [accessProtect
		critical: [contentsArray removeAtIndex: i]] valueUninterruptably