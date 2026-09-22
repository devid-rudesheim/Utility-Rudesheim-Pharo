"
A RadianAngleNormalizerUtilityRudesheim converts between raw radians and Rudesheim's normalized
angle form, reached as `Rudesheim Utility Normalizer Angle Radian`. See
DegreeAngleNormalizerUtilityRudesheim's comment for the normalized form itself and the wrap
convention -- this is the same conversion, scaled by a full turn of `2 * Float pi` radians instead
of 360 degrees (so #halfTurn, derived from #fullTurn by TAngleNormalizerUtilityRudesheim, is
`Float pi`, not 180).
"
Class {
	#name : 'RadianAngleNormalizerUtilityRudesheim',
	#superclass : 'Object',
	#traits : 'TAngleNormalizerUtilityRudesheim',
	#classTraits : 'TAngleNormalizerUtilityRudesheim classTrait',
	#category : 'Rudesheim-Utility-Base',
	#package : 'Rudesheim-Utility-Base'
}

{ #category : 'accessing' }
RadianAngleNormalizerUtilityRudesheim class >> fullTurn [
	^ 2 * Float pi.
]
