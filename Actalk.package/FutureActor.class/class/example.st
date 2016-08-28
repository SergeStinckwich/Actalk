example
example
	"self example"
	"This is an example of future actor which receives several transactions 
	before actual specification of its initial behavior,
	computed externally 
	and sent by a replacement message.
	Then it will be able to accept and 
	serve the requests."
	self new deposit: 300 replyTo: Print;
		 withdraw: 400 replyTo: Print;
		 balanceAndReplyTo: Print;
		
		replace: (BankAccount new balance: 200)