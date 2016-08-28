script
get2
	"If less than two items, wait for one or two (as needed) put request(s)."
	contents size < 2
		ifTrue: [self answer: #(#put: ).
			contents size = 1
				ifTrue: [self answer: #(#put: )]].
	^ Array with: self get with: self get