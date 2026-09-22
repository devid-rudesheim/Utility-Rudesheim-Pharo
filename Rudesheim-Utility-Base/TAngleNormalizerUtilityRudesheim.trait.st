"
TAngleNormalizerUtilityRudesheim provides the shared class-side conversion logic for
DegreeAngleNormalizerUtilityRudesheim/RadianAngleNormalizerUtilityRudesheim: #normalizeAngle:
(raw unit -> Rudesheim's normalized angle form, (-0.5, 0.5]) and #denormalizeAngle: (the reverse).
A using class only needs to supply #fullTurn (360 for Degree, 2 * Float pi for Radian) --
#halfTurn is derived from it here, not a separate hardcoded constant.
"
Trait {
	#name : 'TAngleNormalizerUtilityRudesheim',
	#category : 'Rudesheim-Utility-Base',
	#package : 'Rudesheim-Utility-Base'
}

{ #category : 'converting' }
TAngleNormalizerUtilityRudesheim class >> denormalizeAngle: aNormalizedNumber [
	^ aNormalizedNumber * self fullTurn.
]

{ #category : 'accessing' }
TAngleNormalizerUtilityRudesheim class >> halfTurn [
	^ self fullTurn / 2.
]

{ #category : 'converting' }
TAngleNormalizerUtilityRudesheim class >> normalizeAngle: aNumber [
	|
		adjustedNumber
	|

	adjustedNumber := aNumber.

	self halfTurn < aNumber
		ifTrue:
		[
			adjustedNumber := aNumber - self fullTurn.
		].

	^ adjustedNumber / self fullTurn.
]
