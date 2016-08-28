message dispatching
sendTypeOf: aMessage 
	"Dispatch onto asynchronous or future type message passing,
	according 
	to the first letter of the selector (A for asynchronous)."
	^ (aMessage selector at: 1)
			= $A
		ifTrue: [#asynchronous]
		ifFalse: [#future]