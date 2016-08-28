Class PlainInvocation is a subclass of class StandardInvocation.
It adds one instance variable (process) to record the subprocess created to actually compute the invocation.
This may be used in order for a behavior to access current invocation by using this process as an index. See behavior class PlainInvocationObject.