example
exampleWithDynamicPriorityChange: isDynamic 
	"self exampleWithDynamicPriorityChange: false"
	"self exampleWithDynamicPriorityChange: true"
	"Compare ordering of requests with a fixed priority and with a dynamic 
	change. "
	| printer |
	printer := self new active.
	printer updatePriorityOf: #ungrad to: 1;
		 updatePriorityOf: #grad to: 2;
		 updatePriorityOf: #staff to: 3;
		
		print: 1
		length: 1
		group: #ungrad;
		
		print: 2
		length: 2
		group: #staff;
		
		print: 3
		length: 3
		group: #ungrad;
		
		print: 4
		length: 1
		group: #ungrad;
		
		print: 5
		length: 1
		group: #staff.
	"First initialize the priority of each current group."
	"Send printing requests."
	isDynamic
		ifTrue: [(Delay forSeconds: 2) wait.
			"Temporarily (fools day!) lowest priority group gets the highest 
			of all."
			printer updatePriorityOf: #ungrad to: 4.
			(Delay forSeconds: 5) wait.
			"Fools day is over. Return to standard policy."
			printer updatePriorityOf: #ungrad to: 1]