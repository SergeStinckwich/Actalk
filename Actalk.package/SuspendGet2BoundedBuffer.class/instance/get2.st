script
get2
	"Wait until buffer contains at least two elements."
	self
		waitUntil: [contents size >= 2].
	^ Array with: self get with: self get