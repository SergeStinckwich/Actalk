example
example: numberOfTicks wakeUpFrom: t1 after: delay 
	"self example: 10 wakeUpFrom: 3 after: 5"
	| alarmClock |
	alarmClock := self new active.
	[numberOfTicks
		timesRepeat: [alarmClock tick.
			(Delay forSeconds: 1) wait]] fork.
	(Delay forSeconds: t1) wait.
	alarmClock wakeUpAfter: delay