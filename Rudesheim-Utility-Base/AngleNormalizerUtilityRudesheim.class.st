"
An AngleNormalizerUtilityRudesheim is the namespace for the unit-specific angle normalizers,
reached as `Rudesheim Utility Normalizer Angle`: #Degree (DegreeAngleNormalizerUtilityRudesheim)
and #Radian (RadianAngleNormalizerUtilityRudesheim). Each answers a class implementing the same
pair of class-side conversions between a raw angle unit and Rudesheim's normalized angle form,
(-0.5, 0.5] -- a fraction of a full turn (0.0=no rotation, positive=clockwise; see
DegreeAngleNormalizerUtilityRudesheim's comment for the exact convention, shared by both units):
#normalizeAngle: (raw unit -> normalized) and #denormalizeAngle: (normalized -> raw unit).
"
Class {
	#name : 'AngleNormalizerUtilityRudesheim',
	#superclass : 'Object',
	#category : 'Rudesheim-Utility-Base-Namespace',
	#package : 'Rudesheim-Utility-Base',
	#tag : 'Namespace'
}

{ #category : 'namespace' }
AngleNormalizerUtilityRudesheim class >> Degree [
	^ DegreeAngleNormalizerUtilityRudesheim.
]

{ #category : 'namespace' }
AngleNormalizerUtilityRudesheim class >> Radian [
	^ RadianAngleNormalizerUtilityRudesheim.
]
