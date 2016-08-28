Class BlockContinuation purpose is to avoid explicit creation of numerous classes of continuations because of explicit handling of replies (as examplified by class FactorialContinuation, see category Actalk-Examples).

It owns a block closure which represents the behavior of the continuation. The block must have one parameter representing the value replied to the continuation (argument of reply: message) and a second parameter representing the continuation active object itself (its address, usually named me). This latter parameter may be useful when passing reference to the continuation active object to other active objects, for recursion, and for terminating the process.

Class BlockContinuation allowes specification of various behaviors of continuations through a single behavior class.

Note that because block closures have lexical scoping, the programmer does not need to explicitly declare (closure of) variables of the continuation. (Contrast the creation of factorial continuation as a block continuation with the creation of an instance of class FactorialContinuation by comparing various methods of class Factorial). Anonymous block continuations are analog to anonymous lambda expressions for defining continuations in Scheme.

We assume that replies are conveyed by a message with selector reply:. This convention makes easy sharing and reuse of various predefined reply destination actors. See class ActiveTranscript as an example of such a widely shared reply destination.

Method named continuationBlock: of class ActiveObject provides a more concise way of specifiying a block continuation actor.

Instance Variables:

	behaviorBlock	<BlockClosure>	a block with two arguments which implements the behavior of the continuation actor.

Class SingleReplyBlockContinuation introduces an optimization of class BlockContinuation when only one reply is expected.

Acknowledgements:
Block continuations were initially introduced by Alexis Drogoul when implementing the Actalk-based eco-simulation testbed named Ecotalk.