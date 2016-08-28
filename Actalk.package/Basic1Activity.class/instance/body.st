activity setting
body
	"This is a parameter method, intended to be possibly redefined in 
	extension subclasses."
	"Define the behavior body."
	"Default body is an endless loop to serially consume successive pending 
	messages.
	That is default semantics of activity is reactivity with implicit 
	acceptance of messages."
	[true]
		whileTrue: [self acceptNextMessage]