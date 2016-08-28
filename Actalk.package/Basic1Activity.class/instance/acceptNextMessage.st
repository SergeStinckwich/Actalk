message handling
acceptNextMessage
	"Accepting next message."
	"(It gets suspended until there is one, see method nextMessage)."
	self acceptMessage: self nextMessage