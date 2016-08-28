script
enter: aPhilosopher 
	Transcript show: aPhilosopher printString , ' enters ' , self printString;
		 cr.
	occupancy := occupancy + 1