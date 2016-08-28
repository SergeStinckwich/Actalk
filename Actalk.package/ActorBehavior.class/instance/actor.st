actor creation
actor
	"Create an actor, once the behavior is specified."
	"The class of the actor (e.g., class Actor) is specified and returned by method actorClass."
	"This is similar to method defaultControllerClass of class View."

	^self activeObject: self;
		createAddressAndStart: self actorClass