Class Counter is the seminal (and most simple) example of (active) object.
It shows the four main differences with standard Smalltalk programming:

	Class Counter is defined as a subclass of class ActiveObject and not of class Object.

	The active object is actually created by sending the message active to the newly created behavior.

	Consulting the contents implies passing the reply destination (e.g., the predefined printer Print) because in standard Actalk asynchronous message passing there is no implicit reply. This also means that standard Smalltalk-80 caret (^) to return the value is of no use (except for escaping the method). Replying must be explicitly stated as a message sending (with reply: selector) to the reply destination, either passed as an argument or stored (for example by a continuation, see category Actalk-Kernel-JoinCont).

Note that all examples (should) have (at least) one example method, defined as a class method within protocol example (thus following standard Smalltalk-80 convention).

Instance Variables:

	contents		<Integer>	the contents of the counter.

In order to have homogeneous naming for methods passing reply destinations, we use the following conventions (in addition to using reply: as the convention for reply selector):

	add AndReplyTo: to the end of a selector when there is no other argument (besides the reply destination),
		example is selector contentsAndReplyTo:

	add replyTo: to the end of a selector when there are other arguments,
		example is selector n:replyTo: of class Factorial.

In case of passing the reply selector as a parameter, this becomes AndReplyTo:withSelector: or replyTo:withSelector:, example is selector contentsAndReplyTo:withSelector:.