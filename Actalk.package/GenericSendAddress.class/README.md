Class GenericSendAddress is an abstract class which parameterizes structure of the message and dispatching of message types and modes.
It is defined as a subclass of address class Address.

Basic and default structure of the message is as an instance of standard Smalltalk-80 class Message. In order to insert new information (sender, reply destination, arrival time...) which may be useful in specific subclasses, the message structure is made generic, by calling parameter method invocationClassFor: of the associated activity class.

The class also provides generic dispatch of the message received along possible message send types and modes.
As an example, ABCL/1 three types of message passing (asynchronous, synchronous, and future), plus the express mode are easily defined as a subclass (classes Abcl1Address and Abcl3Address).
Also implicit reply (class ImplicitReplyAddress) and POOL synchronous message passing and public routines (class PoolAddress) are easily defined as subclasses.

Parameter method receiveMessage: is redefined in order to generify message structure and message send.

New parameter methods are:

	receiveGenericMessage:								to dispatch the generified message,

	sendTypeOf:											to find the type of the message send, e.g., asynchronous, synchronous...

	sendModeOf:										to find the mode of the message send, that is on which message queue it should be enqueued,

	self receiveMessage:withSendType:withSendMode:		to first dispatch according to the mode,

	self receiveMessage:withSendType:inMessageQueue:	to further dispatch according to the type,

	insertReplyDestination:intoMessage:					to express how to insert a future object as a reply destination within a future type message.