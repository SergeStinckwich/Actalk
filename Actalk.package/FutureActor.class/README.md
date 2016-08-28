Class FutureActor implements futures (that is objects/actors whose behavior/value has not been assigned yet) simply as a newly created actor with no initial behavior.
In other words a FutureActor is simply a born insensitive actor (!).
It will buffer all messages until its real nature (behavior) gets computed (externally and assigned through some behavior replacement message).

Actually there is no need for any implementation. No instance variable nor method is defined!
Its superclass ExternalReplaceActorAddress could be used as well. But we define class FutureActor as a way to clearly identify the use of futures.

Note that the limitation of this model of future is that its value when computed may only be defined through a behavior.
Because Actalk is not fully uniform (not everything is an actor), basic entities such as numbers cannot be easily defined through behaviors. A future actor cannot become such a primitive object.
Future actors are useful to implement external actors, that is, in the terminology of Gul Agha, actors which provide interfacing with other program modules. One may provide the actual connection at execution time, meanwhile future actors will buffer all incoming messages.

One alternative to this implementation of future objects relies on more traditional objects and assignment, as well as semaphores. This could be found in category Actalk-FutureObject and will be used to implement eager type (also called future type) message passing.