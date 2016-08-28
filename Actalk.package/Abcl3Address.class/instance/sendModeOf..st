message passing
sendModeOf: aMessage 
	"An express mode message is tagged through the first letter of the 
	selector (E for express)."
	^ (aMessage selector at: 1)
			= $E
		ifTrue: [#express]
		ifFalse: [super sendModeOf: aMessage]