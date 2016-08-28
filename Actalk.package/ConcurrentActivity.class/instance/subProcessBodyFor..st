activity setting
subProcessBodyFor: aMessage 
	"Define the subprocess body."
	"Default body is to accept and consume the message."
	self subProcessAcceptMessage: aMessage