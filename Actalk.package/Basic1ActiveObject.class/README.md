Class Basic1ActiveObject is the basic class which implements the behavior of an active object.
The behavior is the object which eventually consumes incoming messages and processes them.

See more insights within class ActiveObject comment.

Instance Variables:

	aself	<Address>	 the actual address of the active object. (aself as address of self.)

Parameter methods, that is methods which may be redefined in extension subclasses in order to express various OOCP semantics, are:
	privateInitialize
	active
	activityClass
	addressClass