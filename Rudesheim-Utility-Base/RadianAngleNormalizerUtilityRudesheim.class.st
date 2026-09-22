"
A RadianAngleNormalizerUtilityRudesheim converts between raw radians and Rudesheim's normalized
angle form, reached as `Rudesheim Utility Normalizer Angle Radian`. See
DegreeAngleNormalizerUtilityRudesheim's comment for the normalized form itself and the wrap
convention -- this is the same conversion, scaled by a full turn of `2 * Float pi` radians instead
of 360 degrees (so the wrap threshold is `Float pi`, not 180).
"
Class {
	#name : 'RadianAngleNormalizerUtilityRudesheim',
	#superclass : 'Object',
	#category : 'Rudesheim-Utility-Base',
	#package : 'Rudesheim-Utility-Base'
}

{ #category : 'converting' }
RadianAngleNormalizerUtilityRudesheim class >> denormalizeAngle: aNormalizedNumber [
	^ aNormalizedNumber * 2 * Float pi.
]

{ #category : 'converting' }
RadianAngleNormalizerUtilityRudesheim class >> normalizeAngle: aRadianNumber [
	aRadianNumber > Float pi
		ifTrue:
		[
			^ ( aRadianNumber - ( 2 * Float pi ) ) / ( 2 * Float pi ).
		].

	^ aRadianNumber / ( 2 * Float pi ).
]
