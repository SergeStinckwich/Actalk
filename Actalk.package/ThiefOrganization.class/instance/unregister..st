script
unregister: aThief 
	thieves
		remove: aThief
		ifAbsent: [Transcript show: aThief printString , ' : you live only twice!']