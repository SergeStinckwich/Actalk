Trio classes PoolObject, PoolActivity and PoolAddress implement POOL body model, explicit message acceptance, post actions, synchronous message passing, and (object-like) public routines.

Address class PoolAddress implements synchronous message passing as a standard and dispatches onto public routine handling.
Class PoolActor is defined as a subclass of class ImplicitReplyAddress (to handle implicit reply).
See class PoolActivity comment.