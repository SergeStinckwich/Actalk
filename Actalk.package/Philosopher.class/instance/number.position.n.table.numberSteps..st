initialize
number: num position: i n: n table: aTable numberSteps: steps 
	number := num.
	leftForkPosition := i.
	rightForkPosition := leftForkPosition \\ n + 1.
	table := aTable.
	numberSteps := steps