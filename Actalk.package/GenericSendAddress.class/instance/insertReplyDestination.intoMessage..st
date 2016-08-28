message passing types
insertReplyDestination: r intoMessage: aMessage 
	"Insert a reply destination into a message and return the extended 
	message. "
	"This is a parameter method."
	"No default. It should be defined in subclasses."
	^ self subclassResponsibility