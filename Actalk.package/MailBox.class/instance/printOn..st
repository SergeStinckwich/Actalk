printing
printOn: aStream 
	"Print as its class name, then its contents."
	super printOn: aStream.
	contentsArray printOn: aStream