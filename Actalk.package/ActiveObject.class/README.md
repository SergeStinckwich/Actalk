Kernel class ActiveObject implements the behavior of an active object.
The behavior is the object which eventually consumes incoming messages and processes them.

User programs will define active objects as subclasses of this class (or one of its subclasses).

When defining new programming constructs (e.g., the waitFor: construct of ABCL/1 OOCP language), one will also define a new subclass of ActiveObject (e.g., class AbclObject).

Useful facilities are following:

	creating anonymous block continuation active objects as a more concise alternative to explicit classes of continuations,
	see methods continuationBlock: and singleReplyContinuationBlock:,

	user-event based tracing facilities which may automatically set and unset event based traces,
	see class methods setTrace: and setTraceOn*,

	cleanup facilities to provide a termination of activity process(es),
	see class methods cleanUp and allCleanUp,

	compatibility constraints to specify and check possible incompatibilities between the three components of an active object (behavior, activity and address),
	specification is provided by methods activityConstraint and addressConstraint,
	check up is provided by class methods checkConstraints and allCheckConstraints.

Please start with examples within the Actalk-Examples category.