Class StandardInvocation is a subclass of class WithReplyDestInvocation.

It inherits implicit reply destination instance variable (replyDest).
It adds two new variables: arrivalTime and sender.
It also defines accessing method to a given (by its index) argument of the invocation.

Note that unfortunately fetching an argument of a message by its name is uneasy in Smalltalk. There is no direct way to relate names of parameters as defined in a method message pattern with the arguments within a message.