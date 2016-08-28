script
get
	"A get looks for a matching put: still pending."
	self answer: #(#put: ).
	"With the assumption that method put: will assign variable element
	as a 
	(primitive) means of communication between put: and get."
	^ element