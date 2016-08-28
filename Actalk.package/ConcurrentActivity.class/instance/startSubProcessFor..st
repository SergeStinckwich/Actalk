activity setting
startSubProcessFor: aMessage 
	"Create and start a new subprocess to consume a message."
	"The message to be consumed is passed as an argument.
	This allowes lazy 
	creation of subprocesses when needed (when message has been 
	selected). "
	[self subProcessBodyFor: aMessage] newProcess resume