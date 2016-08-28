initialize
readers: nReaders writers: nWriters numberSteps: steps 
	readers := Array new: nReaders.
	writers := Array new: nWriters.
	numberSteps := steps