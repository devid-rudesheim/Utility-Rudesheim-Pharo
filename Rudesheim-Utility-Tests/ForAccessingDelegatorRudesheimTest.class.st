"
A RHDelegationForAccessingTest is a test class for testing the behavior of RHDelegationForAccessing
"
Class {
	#name : 'ForAccessingDelegatorRudesheimTest',
	#superclass : 'DelegatorRudesheimTest',
	#category : 'Rudesheim-Utility-Tests-Delegator',
	#package : 'Rudesheim-Utility-Tests',
	#tag : 'Delegator'
}

{ #category : 'accessing' }
ForAccessingDelegatorRudesheimTest class >> targetClass [
	^ ForAccessingDelegatorUtilityRudesheim.
]

{ #category : 'accessing' }
ForAccessingDelegatorRudesheimTest >> defaultBasicTarget [
	^ self targetClass
		targetFrom:	#yourself
		of:	1.
]

{ #category : 'tests' }
ForAccessingDelegatorRudesheimTest >> testBasicInstanceCreation [
	super testBasicInstanceCreation.
]

{ #category : 'tests' }
ForAccessingDelegatorRudesheimTest >> testDelegate [
	super testDelegate.
]
