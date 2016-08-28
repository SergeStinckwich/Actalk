accessing
sendTo: receiver
	"answer the result of sending this message to receiver"

	| res |
	self halt.
	res := receiver perform: selector withArguments: args.
	future reply: res. 
	^ res.