suspension management
subProcessWaitUntil: resumptionConditionBlock 
	"Suspend current method computation on a resumption condition (block)."
	"Equivalent to relinquish: construct in ConcurrentSmalltalk-II."
	| aSemaphore |
	aSemaphore := Semaphore new.
	"Create and add one association for current subprocess suspension to be 
	done. "
	self addSuspendedSubProcessOnCondition: resumptionConditionBlock andSemaphore: aSemaphore.
	"First resume the main activity body process."
	controlSemaphore signal.
	"Then, suspend current subprocess onto the semaphore."
	aSemaphore wait
	"Note that when signaled, the suspended subprocess resumes here,
	and 
	immediately returns to resumption of processing the method body which 
	had been suspended."