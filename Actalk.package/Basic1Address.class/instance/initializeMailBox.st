initialize
initializeMailBox
	"Create a new mailbox, that is an extended shared queue, private to the 
	address. "
	"Is automatically called at creation time thanks to redefinition of new 
	method. "
	mailBox := MailBox new