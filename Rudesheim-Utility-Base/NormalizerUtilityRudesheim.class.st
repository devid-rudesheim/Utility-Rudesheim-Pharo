"
A NormalizerUtilityRudesheim is the namespace for Rudesheim-Utility's value-normalization helpers,
reached as `Rudesheim Utility Normalizer`. Currently holds only #Angle
(NormalizerUtilityRudesheim class >> Angle); more normalizer kinds can be added here as new
namespace accessors without touching the existing ones.
"
Class {
	#name : 'NormalizerUtilityRudesheim',
	#superclass : 'Object',
	#category : 'Rudesheim-Utility-Base-Namespace',
	#package : 'Rudesheim-Utility-Base',
	#tag : 'Namespace'
}

{ #category : 'namespace' }
NormalizerUtilityRudesheim class >> Angle [
	^ AngleNormalizerUtilityRudesheim.
]
