script
get2AndReplyTo: r
	"If less than two elements, then invoke the suspendGet2 user-defined event handler."

	self hasAtLeastTwoElements not
		ifTrue:
			[self activity suspendGet2Event]
		ifFalse:
			[r reply: (Array
						with: contents removeFirst
						with: contents removeFirst)]