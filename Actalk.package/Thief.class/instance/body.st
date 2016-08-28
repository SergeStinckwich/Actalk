body
body
	"Main activity for a thief."
	| victim |
	[true]
		whileTrue: ["First look if something requested has arrived."
			(self unBlockingAnswer: #(#reply: ))
				ifFalse: ["If not, get angry and look for a victim."
					victim := (organization oneExcept: aself) value.
					victim isNil
						ifTrue: ["If no victim can be found, this means that the 
							thief is the only remaining."
							Transcript show: self printString , ' is a total winner!';
								 cr.
							Transcript show: self printString , ' owns ' , bag printString;
								 cr.
							^ 'exit from the body loop']
						ifFalse: ["Otherwise, it orders its victim to give him 
							something. "
							victim giveSomethingAndReplyTo: aself]].
			"After this satisfaction, sleep for a while."
			(Delay forMilliseconds: (Random new next * 1000) rounded) wait.
			"When awaking the thief is vulnerable to other thieves requests."
			self unBlockingAnswer: #(#giveSomethingAndReplyTo: ).
			"Trace the amount of things owned, and loop again."
			Transcript show: name , '(' , bag size printString , ') ']