Class ObjectBodyObject is a behavior class that dispatches onto the activity class ObjectBodyActivity and ensures that the body is defined by the programmer in the application behavior subclass.

Class ObjectBodyObject is defined as a subclass of behavior class ExplicitAcceptObject because it usually needs to specify explicit acceptance of messages as it is the only way for it to receive messages.
(Meanwhile, see class PoolPhilosopher in category Actalk-Ext-Pool-Examples, as an example of body-based active object which does not receive/accept any message).