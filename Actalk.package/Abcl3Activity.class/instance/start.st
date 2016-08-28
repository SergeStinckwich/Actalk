activity setting
start
	"Create and start a second activity process specific for express mode 
	messages. "
	super start.
	expressProcess := [[true]
				whileTrue: [self acceptExpressMessage: address expressMailBox next]] newProcess.
	expressProcess resume