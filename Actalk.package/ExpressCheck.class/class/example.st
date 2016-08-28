example
example
	"self example"
	| o |
	o := self new active.
	o normal: 100;
		 ExpressNonResume: 100;
		 normalAtomic: 100;
		 normal: 100.
	(Delay forMilliseconds: 1500) wait.
	o Express: 40