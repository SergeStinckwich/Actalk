Class BecomeFuture implements future objects which become a value once computed.

Future objects are used to implement future type message passing, that is returning eagerly a promise of a value to be computed.
Class BecomeFuture is a subclass of class TrapMessagesObject (see below).

A future is implemented with a semaphore to control access to the future object (mainly wait until its assignment).

Note that a future object is implemented as a passive (standard) object and not an active one.
(See class FutureActor as an alternative).

Instance Variables:

	semaphore	<Semaphore>	synchronizes accesses to the value
								(accessing processes are suspended until the value is set).

Instance method reply: is the assignment method. We use the selector reply: because in future type message passing a future object becomes the reply destination of the requested computation.
Instance method value fetchs the value of the future and suspends until assignment.
Any other message sent to a future is implicitly (and transparently) forwarded to the value fetched (and thus suspended until assignment). This works because class Future is a subclass of class TrapMessagesObject and method doesNotUnderstand: is redefined as forwarding the message to the value.
Note that this forwarding/suspension disappears once the future has become the actual value.

Because the equality message (=) is defined in class TrapMessagesObject, we redefine it in class Future to forward = to the value fetched.

Note that there are two main (and actually strong) restrictions on this implementation of future objects through the primitive become:

	the value should not be an immediate object (e.g., an integer)
	as primitive become: cannot swap such primitive objects,

	the value should not be shared by other objects
	as it will become (be swapped with) the future object.

	(as an example, set the value of a BecomeFuture to be class Object, and see how Smalltalk-80 crashes...).

For the reasons explained above, this implementation may not be used freely.
See subclass Future as a general purpose class of future objects.