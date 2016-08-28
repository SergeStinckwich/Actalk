Invocation class JobSizeInvocation adds an instance variable (jobSize) to record the size of the job.
This is useful in a starvation free policy where the job size may be decreased each time one invocation is skipped by being prefered a shorter size job.
See activity class StarvationFreeShortestJobFirstPrinterActivity.