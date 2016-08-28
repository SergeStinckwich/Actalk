message handling
acceptExpressMessage: aMessage 
	"Accepting an express message takes priority (suspend) over normal 
	(standard) acceptance.
	Ensure mutual exclusion with the expressAtomic: 
	construct. "
	"Note that acceptance of express mode messages bypasses the generic 
	events.
	Thus variable currentMessage set by event method 
	kernelEventAccept: cannot be shadowed
	by an interrupting express mode 
	message. "
	expressExclusionSemaphore
		critical: [process suspend.
			self performMessage: aMessage.
			process resume]