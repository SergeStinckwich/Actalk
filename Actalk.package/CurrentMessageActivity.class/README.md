Class CurrentMessageActivity provides a pseudo-variable named currentMessage which references the current message being performed.

Note that currentMessage denotates current message all along acceptance BECAUSE we may assume there is one message at a time.
This simple implementation is not valid in an intra-object concurrency context.
We could then rely on a dictionary (indexed by current process) strategy as the one used to manage post-actions in the class ConcurrentSmalltalkActivity, in category Actalk-Ext-Suspend.

Class CurrentMessageActivity is useful to define access to the sender (of current message), see subclass WithSenderActivity.
Pseudo-variable currentMessage together with generic events also provide most of OCore meta-level archirecture needed to express some synchronization onto acceptance of messages (actually by aborting them and reaccepting them eventually), see category Actalk-Ext-OCore-Ex.