suspension management
resumeSuspendedSubProcessAssociation: association 
	"Resume a suspended subprocess by removing the association from the 
	list and signaling the semaphore on which it is waiting."
	"association = <key: resumption condition block , value: semaphore on 
	which the process waits>."
	suspendedSubProcessAssociationList remove: association.
	association value signal