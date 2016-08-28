Activity class ConcurrentSmalltalkActivity provides post actions which can be executed after returning the value, thus freeing the sender from unneeded waiting.
It is defined as a subclass of activity class SuspendActivity.

Instance Variables:

	postBlockDictionary	<Dictionary>	the dictionary containing post actions blocks specified by currently computing sub activities.

As opposed to PoolActivity simple implementation of post actions through a single variable postBlock used as a flag and a container, we are now using a dictionary.
This is because method computation may be suspended before completion and consequently several post actions may be specified before one method completes.
Therefore we must be able to link a block of post actions with the corresponding method computation which specified it. We use the subprocess computing the method as a key. The dictionary stores the following associations:
	key:		a subprocess,
	value:	a post actions block.