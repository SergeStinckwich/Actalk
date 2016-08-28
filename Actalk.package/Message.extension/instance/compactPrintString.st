*actalk
compactPrintString
	"Answer a String whose characters are a compact description of the 
	receiver.
	The compact format 
	is
		selector#(arguments)
		or
		selector#(arguments) from sender
			if sender 
	is known and not nil."
	^ selector asString , args printString
		, (self sender isNil
				ifTrue: ['']
				ifFalse: [' from ' , self sender printString])