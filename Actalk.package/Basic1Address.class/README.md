Class Basic1Address is the basic class which implements the address of an active object.
The address is the object which receives and buffers incoming messages.

Class Basic1Address is defined as a subclass of encapsulator class TrapMessagesObject as incoming messages will be trapped through the doesNotUnderstand: error.

See more insights within class Address comment.

Instance Variables:

	mailBox	<MailBox>	the mail queue containing incoming messages.
	activity	<Activity>	the activity of the active object.

Parameter methods, that is methods which may be redefined in extension subclasses in order to express various OOCP semantics, are:
	privateInitialize
	receiveMessage:
	asynchronousSend:inMessageQueue: