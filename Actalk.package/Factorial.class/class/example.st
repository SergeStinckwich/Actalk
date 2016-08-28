example
example
	"self example"
	"The point is that fac(5) is printed before fac(10) although computation 
	is started afterwards.
	 This proves that the two computations occur 
	concurrently. "
	self new active n: 10 replyTo: Print;
		 n: 5 replyTo: Print