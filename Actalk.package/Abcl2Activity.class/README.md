Activity class Abcl2Activity is a subclass of activity class WithSenderActivity.
It does not add nor redefine any functionality.
Its only purpose is to dispatch onto address class Abcl2Address, otherwise address classes specified by the behavior (Abcl2Address) and by the activity (WithSenderAddress) would be found incompatibles.