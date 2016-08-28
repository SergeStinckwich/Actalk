printing
printOn: aStream 
	"External representation of an active object: & followed by the active 
	object behavior. Ex: &a Counter."
	aStream nextPut: $&.
	activity activeObject printOn: aStream