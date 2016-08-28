Class Basic1Activity is the basic class which implements the activity of an active object.
The activity is the object which specifies and controls selection and acceptance of messages and provides ressources (process(es)) to perform computation autonomously.

See more insights within class Activity comment.

Instance Variables:

	address	<Address>		the address of the active object.
	oself	<ActiveObject>	the behavior of the active object. (oself as object itself.)

Parameter methods, that is methods which may be redefined in extension subclasses in order to express various OOCP semantics, are:
	privateInitialize
	start
	createProcess
	body
	nextMessage
	acceptMessage:
	performMessage:
	addressClass
	invocationClassFor: