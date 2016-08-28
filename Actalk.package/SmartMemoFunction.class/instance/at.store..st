script
at: n store: fn 
	"Store the value of f(n) into the dictionary.
	If reply destinations 
	requesting the value have been stored, reply the value to all of them."
	| vn |
	vn := memoDictionary
				at: n
				ifAbsent: [#absent].
	vn = #absent
		ifFalse: ["If there is an entry in the dictionary,"
			"then this is a collection of continuations waiting for (having 
			requested) the value."
			vn
				do: [:r | r reply: fn]].
	"The value is sent to all of them."
	memoDictionary at: n put: fn
	"(Then) the (only) assignment of f(n) takes place."
	"Note that if there is a value in the dictionary, this CANNOT be the 
	value f(n).
This is because the algorithm ensures that there is only one 
	computation of f(n),
and consequently for each value of n ONLY ONE 
	assigment of f(n) will take place.
Consequently the value is the 
	collection of pending reply destinations having requested the value
 by 
	message n:replyTo: and have been added to the collection."