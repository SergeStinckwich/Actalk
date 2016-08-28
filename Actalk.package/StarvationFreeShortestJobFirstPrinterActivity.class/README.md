Activity class StarvationFreeShortestJobFirstPrinterActivity is a subclass of activity class ShortestJobFirstPrinterActivity.
It ensures that no request may starve (being indefinitely delayed) by decreasing its job size each time it has been skipped.
It uses invocation class JobSizeInvocation.