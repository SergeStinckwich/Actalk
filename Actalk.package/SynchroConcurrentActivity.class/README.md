Activity class SynchroConcurrentActivity is an abstract class defining activity and synchronization of concurrent objects.
It is defined as a subclass of activity class ConcurrentActivity.

Class SynchroConcurrentActivity defines synchronization generic events.
They may be used in subclasses for example to update synchronization counters (see its subclass CountersActivity).

Instance variables:

	synchroMutualExclusion	<Semaphore>	ensures mutual exclusion of synchronization generic events.
Note this semaphore also ensures that success of checking acceptance of a message and synchronization event accept are atomic. Also associated class SynchroConcurrentAddress ensures that message enqueueing and synchronization event receive are atomic.