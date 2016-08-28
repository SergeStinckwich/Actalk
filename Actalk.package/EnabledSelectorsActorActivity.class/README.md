Class EnabledSelectorActorActivity is a subclass of class SingleMessageActivity and provides control over acceptance of messages.
(It is actually also a virtual subclass of class EnabledSelectorsActivity but single inheritance restricts reuse from that class.)

Basically it looks only for messages that it knows (selectors of defined methods). This is useful to disable method acceptance (without relying on trapping errors and resending messages as in class NullBoundedBuffer).
Method nextMessage is redefined to look for messages that the class knows (defines or inherits).
See class EmptyBoundedBuffer2 in category Actalk-Ext-Actor-Ext-Ex as the resulting improved version of the bounded buffer example.