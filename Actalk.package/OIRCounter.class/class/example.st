example
example
	"self example inspect"

	"No future object is created and returned when sending the message Aincr.
	That is, as for default, the address of the counter object is returned as the value of the message send expression."

	^(self new contents: 100) active Aincr