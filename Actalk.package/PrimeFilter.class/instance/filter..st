script
filter: i 
	"Check if my value (n) divides i."
	i \\ n = 0
		ifFalse: ["If n is divided by i, then do nothing."
			next isNil
				ifTrue: ["Otherwise,"
					"if the filter is the last of the chain,"
					Print reply: i.
					"this means that a new prime integer has been found,"
					next := (self class new n: i) active
					"and a new filter is added to the chain."]
				ifFalse: [next filter: i]
			"Otherwise, the test is passed along to next filter in the chain."]