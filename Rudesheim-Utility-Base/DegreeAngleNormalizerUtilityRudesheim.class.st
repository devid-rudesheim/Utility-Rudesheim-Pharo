"
A DegreeAngleNormalizerUtilityRudesheim converts between raw degrees and Rudesheim's normalized
angle form, reached as `Rudesheim Utility Normalizer Angle Degree`. The normalized form is
(-0.5, 0.5] -- a fraction of a full turn (0.0=no rotation, 0.25=a quarter turn clockwise, 0.5=a
half turn, -0.25=a quarter turn counter-clockwise). #normalizeAngle: expects raw degrees in
[0, 360) (the form a real sensor reading, e.g. CoreLocation's trueHeading, arrives in) and wraps
values above 180 into negative territory rather than continuing past 0.5, matching atan2's own
(-180, 180] convention -- 180 itself lands on +0.5, not -0.5. #denormalizeAngle: is the reverse,
and never needs a sign-wrap correction: multiplying straight back out by 360 already agrees with
the wrapped form wherever the two are used together (e.g. as input to #sin/#cos, which are
periodic -- -90 degrees and 270 degrees agree).
"
Class {
	#name : 'DegreeAngleNormalizerUtilityRudesheim',
	#superclass : 'Object',
	#category : 'Rudesheim-Utility-Base',
	#package : 'Rudesheim-Utility-Base'
}

{ #category : 'converting' }
DegreeAngleNormalizerUtilityRudesheim class >> denormalizeAngle: aNormalizedNumber [
	^ aNormalizedNumber * 360.
]

{ #category : 'converting' }
DegreeAngleNormalizerUtilityRudesheim class >> normalizeAngle: aDegreeNumber [
	aDegreeNumber > 180
		ifTrue:
		[
			^ ( aDegreeNumber - 360 ) / 360.
		].

	^ aDegreeNumber / 360.
]
