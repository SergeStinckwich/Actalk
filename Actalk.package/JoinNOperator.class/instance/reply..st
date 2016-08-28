script
reply: v 
	values add: v.
	values size = n
		ifTrue: ["If all values are received,
		then we may compute the final 
			value and reply it."
			r
				reply: (values
						inject: neutral
						into: [:subTotal :next | subTotal perform: operator with: next]).
			"Optimize resource recovery, as no more message is expected."
			self terminate]