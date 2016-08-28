Activity class ASIActivity implements a mixed synchronization model.
ASI stands for Abstract State, synchronization counters and Invocations.

Class ASIActivity is a combination of abstract states (class AbstractStatesActivity) and synchronization counters with generic invocations (class PlainInvocationActivity).

The definitions of classes ASCActivity and ASIActivity are actually identical, but they inherit respectively from class CountersActivity and its subclass PlainInvocationActivity.

Activity class ASIActivity currently represents the most advanced, sophisticated and expressive model for synchronization.

See examples within category Actalk-Synchro-ASC-Ex.