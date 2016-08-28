message handling
nextMessage
	"Look for the first message in the mailbox verifying its guard.
	If all 
	current pending messages have false guards,
	then suspend until next 
	received message and check its guard, etc...
	This makes use of method 
	atIndex: which suspends until there is a ith message in the mailBox."
	"As opposed to the initial naive strategy of resending the message
	(class 
	Guards1Activity), this strategy is more efficient
	and it also ensures 
	message ordering preservation."
	"About guards reevaluation semantics:
	Guards are reevaluated (only) 
	when looking for a new message to accept.
	There is no intra-object 
	concurrency in this model of guards."
	| i message mailBox |
	mailBox := self mailBox.
	i := 1.
	message := mailBox atIndex: i.
	[self isCandidateMessage: message]
		whileFalse: [i := i + 1.
			message := mailBox atIndex: i].
	mailBox removeAtIndex: i.
	^ message