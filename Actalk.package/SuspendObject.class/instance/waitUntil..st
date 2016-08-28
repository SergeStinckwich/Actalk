waitUntil construct
waitUntil: resumptionConditionBlock 
	"Suspend current method computation on a resumption condition (block)."
	"Equivalent to relinquish: construct in ConcurrentSmalltalk-II."
	"If resumption condition is true do nothing."
	resumptionConditionBlock value
		ifFalse: [self activity subProcessWaitUntil: resumptionConditionBlock]