events
kernelEventComplete: aMessage 
	"Check if some post action attached to current method computation has 
	been specified.
	If the case, compute it just after performing the message 
	(before final completion)."
	| postBlock |
	postBlock := postBlockDictionary
				at: Processor activeProcess
				ifAbsent: [].
	postBlock isNil
		ifFalse: [postBlock value.
			postBlockDictionary removeKey: Processor activeProcess].
	super kernelEventComplete: aMessage