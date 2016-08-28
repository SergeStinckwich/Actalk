body
body
	"Body: keeps accepting/answering messages get.
	Every message put: is 
	kept in the active object mailbox,
	until explicitly accepted by method 
	get.
	The bounded buffer is the maibox itself !"
	[true]
		whileTrue: [self answer: #(#get )]