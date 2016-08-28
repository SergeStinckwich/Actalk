script
from: n to: p replyTo: r 
	"Multiplies all integers within interval [n p]."
	"jc = join continuation; mid = middle of the interval [n p]."
	| jc mid |
	n = p
		ifTrue: [r reply: n
			"[n n] = n"]
		ifFalse: [jc := (Join2Multiplier new r: r) active.
			mid := n + p // 2.
			self class new active
				from: n
				to: mid
				replyTo: jc.
			"computes [n mid]"
			self class new active
				from: mid + 1
				to: p
				replyTo: jc
			"computes [mid+1 p]"]