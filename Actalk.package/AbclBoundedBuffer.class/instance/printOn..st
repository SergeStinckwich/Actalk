printing
printOn: aStream 
	"Print as default followed by its contents."
	super printOn: aStream.
	contents printOn: aStream