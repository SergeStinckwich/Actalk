script
exit: aPhilosopher 
	Transcript show: aPhilosopher printString , ' exits ' , self printString;
		 cr.
	occupancy := occupancy - 1