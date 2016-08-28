script
n3: n replyTo: r 
	"Third version:
		With a behavior replacement based join continuation 
	adder. "
	"jc = join continuation."
	| jc |
	n < 2
		ifTrue: [r reply: 1]
		ifFalse: [jc := (ReplaceBinaryAdder new r: r) active.
			aself n3: n - 1 replyTo: jc;
				 n3: n - 2 replyTo: jc]