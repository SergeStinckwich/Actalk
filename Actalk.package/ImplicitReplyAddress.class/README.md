Classes ImplicitReplyActivity and ImplicitReplyAddress implement a better integration of message passing between active objects within standard Smalltalk-80 framework.
Standard Smalltalk way of writing and using methods is preserved.
Implicit reply and returned value is specified as usual by using the ^.
(Note that if no ^ is specified, self is returned as a value as usual. In order to return the reference to the active object itself, one should explicitly state ^aself).

Sending a message to an ImplicitReplyAddress returns a future object (see category Actalk-Future) which will eventually contain the value returned by the method performed. The sender (client) may make use of the value by explicitly stating the selector value to wait for the value of the future object. It may also discard the future object if a simple asynchronous message send is appropriate.