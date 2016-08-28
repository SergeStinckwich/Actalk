Activity class CountersActivity implements synchronization counters.

Synchronization counters record status of invocations of methods. Usually three events are recorded for each method and are counted by corresponding counters: reception, acceptance, and completion.
These are exactly the three synchronization generic events. Consequently mapping of incrementation of corresponding counters is immediate.
Therefore class CountersActivity is defined as a subclass of activity class SynchroConcurrentActivity.

Synchronization constraints are expressed through guards as for class GuardsActivity.
Meanwhile the guards may refer to synchronization counters in order to express constraints based on the status of other invocations. This provides precise control of concurrency of invocations, e.g., possible mutual exclusion between some methods.
See examples in category Actalk-Synchro-Counters-Ex.

Note that the implementation of class CountersActivity relies on resending not acceptable messages. As a consequence it may loop for ever possibly rechecking guards of looping messages although conditions cannot change (and therefore don't need to be reevaluated) if no event (new message) occurs.
Subcass InvocationActivity provides a sophisticated implementation with a more precise reevaluation semantics for guards.

The initial implementation of synchronization counters in a previous version of Actalk was designed by a group of students of DESS of University of Nantes, under the guidance of Jean Bezivin and Olivier Roux.