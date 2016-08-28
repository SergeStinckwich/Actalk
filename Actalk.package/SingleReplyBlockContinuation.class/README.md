Class SingleReplyBlockContinuation introduces an optimization of class BlockContinuation when only one reply is expected.
It is a subclass of class BlockContinuation.
because we assume that only one reply is expected, we use a behavior process to accept only one message. This also eliminates the need for explicitly terminating the process to recover resources.

Method named singleReplyContinuationBlock: of class ActorBehavior provides a more concise way of specifiying a single reply block continuation actor. See example of use in class Factorial.