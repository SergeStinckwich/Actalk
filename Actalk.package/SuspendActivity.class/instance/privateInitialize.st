initialize
privateInitialize
	super privateInitialize.
	suspendedSubProcessAssociationList := OrderedCollection new.
	controlSemaphore := Semaphore new