script
from: n to: p 
	"Multiplies all integers within interval [n p] by partitioning the interval 
	in two,
	requesting two recursive computations, and summing up the 
	(future objects) results."
	| mid |
	^ n = p
		ifTrue: [n]
		ifFalse: [mid := n + p // 2.
			(self class new active from: n to: mid)
				* (self class new active from: mid + 1 to: p)]