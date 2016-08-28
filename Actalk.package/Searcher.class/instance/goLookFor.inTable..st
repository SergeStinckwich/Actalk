script
goLookFor: key inTable: table 
	"Look for a key in a symbol table and wait for the reply."
	table lookFor: key forClient: aself.
	self answer: #(#reply: ).
	"The reply has assigned the result of the search into instance variable 
	info. "
	^ info