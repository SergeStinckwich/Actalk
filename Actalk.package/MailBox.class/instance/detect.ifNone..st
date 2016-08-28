enumerating
detect: aBlock ifNone: exceptionBlock 
	"Iterate aBlock over contents (ordered collection of messages) of the 
	mailbox.
	Answer the first element for which aBlock evaluates to 
	true.
	Atomic operation so that contents remains consistent during the 
	iteration. "
	^ [accessProtect
		critical: [contentsArray detect: aBlock ifNone: exceptionBlock]] valueUninterruptably