Trio classes PoolObject, PoolActivity and PoolAddress implement POOL body model, explicit message acceptance, post actions, synchronous message passing, and (object-like) public routines.

See an article onto the POOL language by Pierre America in the OOCP book, pages 199-220.

Activity class PoolActivity is defined as a subclass of class ObjectBodyActivity, as body specification is delegated to the behavior.

It defines a default body which accepts any kind of message successively (as for standard kernel active objects).
It provides post actions which can be executed after returning the value, thus freeing the sender from unneeded waiting.
It provides public routines. Public routines offer object-like methods which are directly computed by the behavior.
They are useful to encapsulate public protocols. In fact they can be necessary to avoid deadlock as it is the case when there is recursion (possibly mutual). (Remember that all message passing in POOL is synchronous thus recursion leads to deadlock).
See for instance the example of class SymbolTable.
Public routines (not to be confused with private routines) are tagged by the first letter of their selector: P for public routines.

Instance Variables:

	postBlock	<nil/BlockClosure>	the block specifying post actions of current method
									(nil if no post actions are specified by current method).

This instance variable acts as a container and a flag to ensure that post actions are completed before accepting next message.

Acknowledgements:
The initial implementation of POOL in a previous version of Actalk was designed by a group of students of DESS of University of Nantes, under the guidance of Jean Bezivin and Olivier Roux.