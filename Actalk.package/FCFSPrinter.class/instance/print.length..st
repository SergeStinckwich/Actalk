script
print: job length: length 
	Transcript show: 'Print job: ' , job printString , ' of length: ' , length printString , ' started ';
		 cr.
	(Delay forSeconds: length) wait.
	Transcript show: 'done!';
		 cr