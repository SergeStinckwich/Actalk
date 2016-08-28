Class SuspendActivity implements suspension of methods.
Within a method body, one may express suspension onto some condition.
This is analog to ConcurrentSmalltalk-II relinquish: method.
This is also analog to Kessel monitors except that monitors synchronize external processes, as here processes are internally created for every starting request.

We need to be able to suspend some method computation, and then start another one or restart one previously suspended (and whose suspension condition became false).
Therefore we need a main control activity process. It will act as a scheduler of message/method activations. It launchs suprocesses for computing requests. Then it suspends. It later resumes once a method computation is suspended or completed.
The main control activity process is following.
It first checks if one previously suspended method subprocess is ready to resume (by checking their conditions). If the case, it resumes it. Otherwise it creates a new activity subprocess to process next pending message. (This is a lazy creation as it first waits for a pending message if there is none yet). Then (in both cases) it suspends until next method completion or suspension.

Class SuspendActivity is defined as a subclass of class ConcurrentActivity as it defines launching of sub activities processes.

Instance Variables:

	suspendedSubProcessAssociationList 	<OrderedCollection>
							holds the ordered collection of waiting (suspended) subprocesses.
							Each item of the collection is an association:
								<condition block , semaphore on which the process waits>.
	controlSemaphore		<Semaphore>	is the main control semaphore to synchronize the main activity process
							and the starting/suspension/resumption/completion of subprocesses created.