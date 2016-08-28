Kernel class Activity implements the activity of an active object.
The activity is the object which specifies and controls selection and acceptance of messages and provides ressources (process(es)) to perform computation autonomously.

To express and simulate a specific OOCP model, one will usually define a subclass of class Activity and redefine some of its parameter methods.

Parameter methods are defined in basic class Basic1Activity.

A specific class of active object behavior (user program) may also specify an associated activity class expressing its synchronization contraints (in order to achieve a better encapsulation). See examples in Actalk-Synchro-*-Ex* categories.

Useful facilities are following:

	cleanup facilities to provide a termination of activity process(es),
	see class methods cleanUp and allCleanUp,

	compatibility constraints to specify possible incompatibilities between the three components of an active object (behavior, activity and address),
	specification is provided by methods activeObjectConstraint and addressConstraint.