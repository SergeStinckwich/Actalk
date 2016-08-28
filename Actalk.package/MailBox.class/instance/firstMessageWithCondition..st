accessing by condition
firstMessageWithCondition: conditionBlock 
	"Look for the first message satisfying the condition.
	(Condition is 
	specified as a block with one parameter being the candidate message).
	It 
	is blocking and suspend until it finds any matching one.
	(This means it 
	suspends onto incoming messages as long as necessary)."
	"The manipulation of readSynch semaphore excess signals is somewhat 
	tricky.
	We need to because we want to suspend until a new message 
	comes
	BUT we don't want to decrement the number of items in the 
	queue
	(until we actually find and remove a matching message)."
	"First instant look for a matching message."
	| message numberOfWaits |
	message := self internalFirstMessageWithCondition: conditionBlock withReadSynchWait: true.
	"We need to record number of waits on readSynch semaphore in order to 
	restore them afterwards,
	because this number represents the number of 
	messages in the mailbox."
	numberOfWaits := 0.
	"While no matching message has been found yet."
	[message isNil]
		whileTrue: ["First wait for next incoming message."
			readSynch wait.
			numberOfWaits := numberOfWaits + 1.
			"The flag/argument of withReadSynchWait: is false, because we 
			already waited for current message."
			message := self internalFirstMessageWithCondition: conditionBlock withReadSynchWait: false].
	"Restore the semaphore excessive signals (minus one for the removed 
	item). "
	numberOfWaits - 1
		timesRepeat: [readSynch signal].
	^ message