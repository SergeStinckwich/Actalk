script
print: job length: length group: group 
	Transcript show: 'Print job: ' , job printString , ' of length: ' , length printString , ' and group: ' , group printString , ' started ';
		 cr.
	(Delay forSeconds: length) wait.
	Transcript show: 'done!';
		 cr