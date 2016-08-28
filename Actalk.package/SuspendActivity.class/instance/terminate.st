process control
terminate
	"Terminate all suspended subprocesses at first."
	"association = <key: resumption condition block , value: semaphore on 
	which the process waits>."
	suspendedSubProcessAssociationList
		do: [:association | "For each suspension semaphore, terminate the waiting process."
			association value terminateProcess].
	super terminate