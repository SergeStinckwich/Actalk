activity setting
body
	"The behavior body specifies the main control activity body.
	If there is a 
	suspended message whose resumption condition has become true, resume 
	it.
	Otherwise create a new subprocess for next pending message.
	Then 
	current main activity process gets suspended (until next method 
	completion or suspension)."
	| association |
	[true]
		whileTrue: ["First look for (the first) suspended subprocess whose resumption 
			condition has become true."
			association := self lookForFirstResumeableSubProcess.
			association isNil
				ifTrue: ["Otherwise, accept next message (by starting a new 
					subprocess). "
					self acceptNextMessage]
				ifFalse: ["If found, then resume it."
					self resumeSuspendedSubProcessAssociation: association].
			"In both cases, wait for resumption (after next method 
			completion or suspension)."
			controlSemaphore wait]