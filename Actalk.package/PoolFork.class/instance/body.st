body
body
	"Body: accept pickUp, then pickDown, etc..."
	[true]
		whileTrue: [self answer: #(#pickUpBy: ).
			self answer: #(#putDownBy: )]