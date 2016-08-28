Class Factorial computes the function factorial by using continuations. The consequence is that the same active object may compute concurrently several requests as shown by the example.

	fac(n) = fac(n-1) * n
		is split into two parts:
			the recursive call: fac(n-1)
			and the continuation: fac(n-1) * n

Class FactorialContinuation defines the computation of the latter part. This continuation is implemented as the reply destination of the recursive computation of fac(n-1). An alternative way is by using a block continuation (second version method n2:replyTo:).