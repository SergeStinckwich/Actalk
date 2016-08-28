abstract states
partialNotAfterPut
	"Note that gget is specified first in order to provide it priority over get."
	^ #(#gget ) + self partial