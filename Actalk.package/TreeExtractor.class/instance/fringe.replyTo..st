script
fringe: tree replyTo: aReplyDestination 
	"Initialize and start extraction of elements from the tree."
	"Store the reply destination, a future (queue) object, used as a 
	(permanent) communication channel."
	output := aReplyDestination.
	Transcript show: self printString , ' extract: ' , tree printString;
		 cr.
	self extract: tree.
	"EOT = end of tree special symbol. It is sent after completion."
	output reply: #EOT