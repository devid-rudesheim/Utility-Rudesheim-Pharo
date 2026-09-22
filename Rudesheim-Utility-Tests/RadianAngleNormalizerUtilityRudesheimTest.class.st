"
A RadianAngleNormalizerUtilityRudesheimTest verifies the radian<->normalized-angle conversion
against known cardinal values, including the pi-radian wrap boundary (see
RadianAngleNormalizerUtilityRudesheim's comment). Mirrors
DegreeAngleNormalizerUtilityRudesheimTest's coverage, scaled to radians.
"
Class {
	#name : 'RadianAngleNormalizerUtilityRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Utility-Tests',
	#package : 'Rudesheim-Utility-Tests'
}

{ #category : 'accessing' }
RadianAngleNormalizerUtilityRudesheimTest class >> targetClass [
	^ Rudesheim Utility Normalizer Angle Radian.
]

{ #category : 'tests' }
RadianAngleNormalizerUtilityRudesheimTest >> testDenormalizeAngleIsScaleByFullTurn [
	self
		assert:	( self targetClass denormalizeAngle: 0.0 )
		closeTo:	0.

	self
		assert:	( self targetClass denormalizeAngle: 0.25 )
		closeTo:	Float pi / 2.

	self
		assert:	( self targetClass denormalizeAngle: -0.25 )
		closeTo:	Float pi / -2.
]

{ #category : 'tests' }
RadianAngleNormalizerUtilityRudesheimTest >> testNormalizeAngleCardinalValues [
	self
		assert:	( self targetClass normalizeAngle: 0 )
		closeTo:	0.0.

	self
		assert:	( self targetClass normalizeAngle: Float pi / 2 )
		closeTo:	0.25.

	self
		assert:	( self targetClass normalizeAngle: Float pi )
		closeTo:	0.5.

	self
		assert:	( self targetClass normalizeAngle: Float pi * 3 / 2 )
		closeTo:	-0.25.
]

{ #category : 'tests' }
RadianAngleNormalizerUtilityRudesheimTest >> testNormalizeThenDenormalizeRoundTripsBelowTheWrap [
	|
		radians
	|

	radians := Float pi / 2.

	self
		assert:
		(
			self targetClass
				denormalizeAngle:
				(
					self targetClass
						normalizeAngle:	radians
				)
		)
		closeTo:	radians.
]
