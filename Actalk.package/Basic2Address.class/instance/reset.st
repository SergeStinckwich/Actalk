reset
reset
	"Full reset (mailbox and activity) and restart of an active object."
	activity terminate.
	self initializeMailBox; privateInitialize.
	activity startWithAddress: self