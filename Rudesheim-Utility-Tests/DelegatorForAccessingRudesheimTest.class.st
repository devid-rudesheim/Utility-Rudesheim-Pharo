"
A RHDelegationForAccessingTest is a test class for testing the behavior of RHDelegationForAccessing
"
Class {
	#name : 'DelegatorForAccessingRudesheimTest',
	#superclass : 'DelegatorRudesheimTest',
	#category : 'Rudesheim-Utility-Tests-Delegator',
	#package : 'Rudesheim-Utility-Tests',
	#tag : 'Delegator'
}

{ #category : 'accessing' }
DelegatorForAccessingRudesheimTest class >> targetClass [
	^ DelegatorForAccessingRudesheim.
]

{ #category : 'accessing' }
DelegatorForAccessingRudesheimTest >> defaultBasicTarget [
	^ self targetClass
		targetFrom:	#yourself
		of:	1.
]

{ #category : 'tests' }
DelegatorForAccessingRudesheimTest >> testBasicInstanceCreation [
	super testBasicInstanceCreation.
]

{ #category : 'tests' }
DelegatorForAccessingRudesheimTest >> testDelegate [
	super testDelegate.
]
