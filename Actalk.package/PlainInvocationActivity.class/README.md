Activity class PlainInvocationActivity is a subclass of class InvocationActivity.
It records current invocations (currently being computed) and completed invocations.
This gives more expressiveness at some extra cost for this management. Note also that as all completed invocations are recorded, this set has no size boundary unless it gets flushed.

Instance variables:

	currentInvocations		<OrderedCollection>	collection of current invocations,
	completedInvocations		<OrderedCollection>	collection of completed invocations.

See example of class PlainInvocationTable in category Actalk-Ext-Invocation-Ex as an example of describing the dining philosophers problem with no record of fork status but through ensuring that no fork is shared between concurrent eating computations.