Basic kernel class Basic2ActiveObject offers a few more facilities than basic kernel class Basic1ActiveObject.

Facilities are mainly:
	check ensuring a single activation,
	control of the activity process,
	user-level generic event methods (associated to invocation reception/acceptance/completion),
	collecting all script selectors (see class method allScriptSelectors).

Note class Basic2ActiveObject also defines a fourth generic event method associated to message sending. It is only triggered when a message is sent to an active object class whose address is class SenderWithAddress or class InvocationAddress or one of their subclasses. Because the sender may be a standard Smalltalk-80 object, this generic method is also defined (empty) in class Object.