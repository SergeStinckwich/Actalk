Activity class InvocationActivity implements model of guards with synchronization counters with added features in order to provide more expressiveness.

Class InvocationActivity is a subclass of activity class CountersActivity.
It adds the following features:
	reference to current invocation,
	better implementation of reevaluation semantics of guards,
	systematic use of generic activations, extended with arrival time information,
	many constructs to loop over pending activations in order to have greater synchronization expressiveness.

Note that reference to pseudo-variable currentInvocation is safe ONLY within a guard evaluation (as it is within the atomic guard evaluation). But it is NOT safe to be used in some event (actually it is safe within accept synchronization event) because it may have been reassigned by some following accepted invocation.
Note that subclass PlainInvocationActivity provides the means for the behavior (associated behavior class PlainInvocationObject) to also access current activation from within a method.

Class InvocationActivity actually implements most of the model of synchronization as described in the technical report Synchronization Variables, Ciara McHale et al., TCD-CS-94-01, University of Dublin, January 1994.

Instance variables:

	currentInvocation			<Invocation>		current invocation being checked for acceptance.
	reevaluationSemaphore	<Semaphore>	controls the reevaluation of guards. Guards of pending invocations won't be reevaluated until some event has occured.

See examples in category Actalk-Ext-Invocation-Ex to describe various problems of synchronization involving time ordering, priorities, starvation avoidance...