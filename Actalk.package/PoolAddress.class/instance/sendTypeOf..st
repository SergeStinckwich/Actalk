message passing
sendTypeOf: aMessage 
	"A public routine message is tagged through the first letter of the 
	selector (P for public).
	Otherwise, this is synchronous message passing."
	^ (aMessage selector at: 1)
			= $P
		ifTrue: [#publicRoutine]
		ifFalse: [#synchronous]