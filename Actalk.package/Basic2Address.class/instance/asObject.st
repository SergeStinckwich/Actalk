accessing
asObject
	"Return the behavior of an active object."
	"This bypasses the address external shell and thus it considers an active 
	object as an almost standard Smalltalk object.
	This could be used to 
	consult the contents of the active object behavior.
	This facility should 
	be used extremely cautiously because it clashes with the 
	encapsulation/serialization provided by the active object.
	Consequently it 
	should be used to consult (read) but not to change (write) the state of 
	the behavior.
	Examples of use are when building user interfaces onto 
	active objects."
	^ activity activeObject