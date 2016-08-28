example
example
	"self example"
	"Thief cleanUp"
	"to stop before the winner takes it all if you get tired!"
	| mafia |
	mafia := self new active.
	mafia register: (Thief new
			name: 'Jeeps'
			owns: #(#PowerBook #bass #bicycle #stereo )
			organization: mafia) active;
		 register: (Thief new
			name: 'Jeff'
			owns: #(#scuba #PC #bike #Tshirt )
			organization: mafia) active;
		 register: (Thief new
			name: 'Laurent'
			owns: #(#coffeeMachine #kanjiBook #camera #Self )
			organization: mafia) active;
		 register: (Thief new
			name: 'Jacques'
			owns: #(#KoreanDictionary #lambda #curry #garlic )
			organization: mafia) active;
		 register: (Thief new
			name: 'Gao'
			owns: #(#alphaBeta #transputer #neckTie #glasses )
			organization: mafia) active