Class Abcl3Activity is the class of activity to handle express mode messages.
A second activity process is created for handling express messages. When resumed (when an express message arrived), it suspends main activity process while computing an express message.

See behavior class Abcl3Object for program constructs controlling express mode message computation.

Instance Variables:

	expressProcess				<Process>		the process for computing express messages.
	expressExclusionSemaphore 	<Semaphore>	ensures mutual exclusion of express messages
												with the expressAtomic: construct.