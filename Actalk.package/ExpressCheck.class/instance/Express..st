script
Express: delay 
	"This is an express mode message."
	Transcript show: 'start express';
		 cr.
	(Delay forMilliseconds: delay) wait.
	Transcript show: 'express stop';
		 cr