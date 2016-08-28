message dispatching
sendTypeOf: aMessage 
	"Dispatch along the three types of message passing (now, past, future) 
	of ABCL/1.
	Check last argument to be symbol #now or #future.
	Dispatch 
	is done using sequence of tests with ^ escape/return (as for factorial 
	method). "
	| lastArgument |
	aMessage arguments isEmpty
		ifTrue: [^ #asynchronous].
	lastArgument := aMessage arguments last.
	(lastArgument isSymbol
			and: [#(#now #future ) includes: lastArgument])
		ifTrue: [^ lastArgument].
	^ super sendTypeOf: aMessage