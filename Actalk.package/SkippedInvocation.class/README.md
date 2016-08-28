Invocation class SkippedInvocation adds an instance variable (numberTimesSkipped) to record the number of times the invocation has been skipped.
This is useful to ensure a starvation free policy.
Class SkippedInvocation is defined as a subclass of invocation class PlainInvocation.
See activity class StarvationFreeTableActivity.