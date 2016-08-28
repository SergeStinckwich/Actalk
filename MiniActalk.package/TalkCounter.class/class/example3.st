examples
example3
	"self example2"
	
	| p |
	p := TalkPrinter new actor. 
	Transcript open.
	TalkCounter new actor
		increment; increment; consultAndReplyTo: p.
	