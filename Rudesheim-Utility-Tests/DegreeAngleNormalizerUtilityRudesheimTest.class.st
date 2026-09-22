"
A DegreeAngleNormalizerUtilityRudesheimTest verifies the degree<->normalized-angle conversion
against known cardinal values, including the 180-degree wrap boundary (see
DegreeAngleNormalizerUtilityRudesheim's comment).
"
Class {
	#name : 'DegreeAngleNormalizerUtilityRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Utility-Tests',
	#package : 'Rudesheim-Utility-Tests'
}

{ #category : 'accessing' }
DegreeAngleNormalizerUtilityRudesheimTest class >> targetClass [
	^ Rudesheim Utility Normalizer Angle Degree.
]

{ #category : 'tests' }
DegreeAngleNormalizerUtilityRudesheimTest >> testDenormalizeAngleIsScaleByFullTurn [
	self
		assert:
		(
			self targetClass
				denormalizeAngle:	0.0
		)
		closeTo:	0.

	self
		assert:
		(
			self targetClass
				denormalizeAngle:	0.25
		)
		closeTo:	90.

	self
		assert:
		(
			self targetClass
				denormalizeAngle:	-0.25
		)
		closeTo:	-90.
]

{ #category : 'tests' }
DegreeAngleNormalizerUtilityRudesheimTest >> testFullTurnIs360Degrees [
	self
		assert:	self targetClass fullTurn
		equals:	360.
]

{ #category : 'tests' }
DegreeAngleNormalizerUtilityRudesheimTest >> testHalfTurnIsDerivedFromFullTurn [
	self
		assert:	self targetClass halfTurn
		equals:	self targetClass fullTurn / 2.
]

{ #category : 'tests' }
DegreeAngleNormalizerUtilityRudesheimTest >> testNormalizeAngleCardinalValues [
	self
		assert:
		(
			self targetClass
				normalizeAngle:	0
		)
		closeTo:	0.0.

	self
		assert:
		(
			self targetClass
				normalizeAngle:	90
		)
		closeTo:	0.25.

	self
		assert:
		(
			self targetClass
				normalizeAngle:	180
		)
		closeTo:	0.5.

	self
		assert:
		(
			self targetClass
				normalizeAngle:	270
		)
		closeTo:	-0.25.
]

{ #category : 'tests' }
DegreeAngleNormalizerUtilityRudesheimTest >> testNormalizeThenDenormalizeRoundTripsBelowTheWrap [
	|
		degrees
	|

	degrees := 90.

	self
		assert:
		(
			self targetClass
				denormalizeAngle:
				(
					self targetClass
						normalizeAngle:	degrees
				)
		)
		closeTo:	degrees.
]
