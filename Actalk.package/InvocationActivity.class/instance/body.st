activity setting
body
	"Define the behavior body."

	| i mailBox|
	mailBox := self mailBox.
	"Infinitely do the following cycle."
	[true] whileTrue:
		["Initialize the index i for accessing messages."
		i := 1.
		"Successively for each message in the mailBox."
		[i <= (mailBox size)] whileTrue:
			[currentInvocation := mailBox basicAtIndex: i.
			"Check if the message may be accepted."
			(self isCandidateMessage: currentInvocation)
				ifTrue:
					["If the case, then remove it from the mailbox and then accept it."
					mailBox removeAtIndex: i.
					self acceptMessage: currentInvocation
					"Note that we don't increment the index as we removed that message."]
				ifFalse:
					["Increment the index in order to check next message."
					i := i + 1]].
	"Once we checked all messages within the mailbox, we wait for any event (receive, accept, complete)
	to occur or if it has already occured.
	We then remove any excess signal to resume the cycle with a semaphore refreshed with no prior event occurence."
	reevaluationSemaphore wait; initSignals]