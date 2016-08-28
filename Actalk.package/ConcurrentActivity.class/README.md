Activity class ConcurrentActivity is an abstract class defining activity of concurrent objects, that is active objects having internal concurrency.
Usually it is necessary to control this concurrency, thus class ConcurrentActivity is defined as a subclass of activity class SelectiveAcceptActivity in order to control acceptance of messages.
Class ConcurrentActivity redefines acceptance of messages as the launching of a new subprocess to consume actual acceptance.

Note that there is no explicit control/synchronization of these sub activities as this is to be defined in specific subclasses expressing specific models of concurrency and synchronization.

One example is activity class SuspendActivity which defines quasi-concurrent objects which may launch several sub activities but with only one actually active at a time, other ones being suspended and waiting on synchronization conditions.
Another example is abstract activity class SynchroConcurrentActivity which defines synchronization generic events to be used in subclasses for example to update synchronization counters (see its subclass CountersActivity).