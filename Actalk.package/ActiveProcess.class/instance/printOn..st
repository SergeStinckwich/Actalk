printing
printOn: aStream 
	"Print as its class name followed by its number."
	aStream nextPutAll: self class name.
	number printOn: aStream