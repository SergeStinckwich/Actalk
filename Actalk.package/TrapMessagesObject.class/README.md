Class TrapMessagesObject is an abstract class whose purpose is to redefine semantics of message passing.
Strategy is to trap messages through an unknown message error and to take specific action thanks to the redefinition of the doesNotUnderstand: error method.
This class may also enforce that almost any message reaching one of its instance will not be recognized and will consequently trigger the doesNotUnderstand: error method.
Currently, because conflicts are actually rare and in order to provide a minimum implementation always up to date with class Object set of mandatory system methods, TrapMessagesObject is simply defined as a subclass of class Object.

Exampels of subclasses of TrapMessagesObject are:
	class Basic1Address which enqueues messages reaching an active object to its mailbox,
	and class Future which forwards messages to the value of the future object.