"
A RHBasicDelegatorTest is a test class for testing the behavior of RHBasicDelegator
"
Class {
	#name : 'BasicDelegatorUtilityRudesheimTest',
	#superclass : 'DelegatorRudesheimTest',
	#category : 'Rudesheim-Utility-Private-Tests-Delegator',
	#package : 'Rudesheim-Utility-Private-Tests',
	#tag : 'Delegator'
}

{ #category : 'accessing' }
BasicDelegatorUtilityRudesheimTest class >> targetClass [
	^ BasicDelegatorUtilityRudesheim.
]

{ #category : 'accessing' }
BasicDelegatorUtilityRudesheimTest >> defaultBasicTarget [
	^ self targetClass
		delegateTo:	1.
]

{ #category : 'tests' }
BasicDelegatorUtilityRudesheimTest >> testBasicInstanceCreation [
	super testBasicInstanceCreation.
]

{ #category : 'tests' }
BasicDelegatorUtilityRudesheimTest >> testDelegate [
	super testDelegate.
]
