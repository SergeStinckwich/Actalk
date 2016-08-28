initialize
privateInitialize
	super privateInitialize.
	currentInvocations := OrderedCollection new.
	completedInvocations := OrderedCollection new