script
ExpressNonResume: delay 
	"This is an express mode message."
	Transcript show: 'start express';
		 cr.
	(Delay forMilliseconds: delay) wait.
	Transcript show: 'nonResume ';
		 cr.
	self nonResume.
	Transcript show: 'express stop';
		 cr