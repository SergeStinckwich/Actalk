printing
printOn: aStream 
	"Print as default followed by its number."
	super printOn: aStream.
	number printOn: aStream