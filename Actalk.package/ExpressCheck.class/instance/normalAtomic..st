script
normalAtomic: delay 
	self
		expressAtomic: [Transcript show: 'atomic '.
			self normal: delay]