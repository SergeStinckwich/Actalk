script
ggetAndReplyTo: r
	"Too complex to handle because when a method fails and invokes user-defined event handlers the event complete is still activated.
	This makes management of afterPut flag to be very difficult because it may be shadowed by the
	aborted gget and also by a put resumed..."