enumerating
do: aBlock 
	"Iterate aBlock over contents (ordered collection of messages) of the 
	mailbox.
	Atomic operation so that contents remains consistent during the 
	iteration. "
	^ [accessProtect
		critical: [contentsArray do: aBlock]] valueUninterruptably