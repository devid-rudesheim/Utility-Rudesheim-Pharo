"
A RHDelegatorTest is a test class for testing the behavior of RHDelegator
"
Class {
	#name : 'DelegatorRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Utility-Tests-Delegator',
	#package : 'Rudesheim-Utility-Tests',
	#tag : 'Delegator'
}

{ #category : 'tests' }
DelegatorRudesheimTest >> testDelegate [

	self
		testDelegate0;
		tearDown;
		setUp;
		testDelegate1;
		tearDown;
		setUp;
		testDelegate2;
		tearDown;
		setUp;
		testDelegate3.
]

{ #category : 'tests' }
DelegatorRudesheimTest >> testDelegate0 [

	self
		assert:	self basicTarget delegate
		equals:	1.
]

{ #category : 'tests' }
DelegatorRudesheimTest >> testDelegate1 [

	self
		assert:	1 + self basicTarget delegate
		equals:	2.
	
	self
		deny:		1 + self basicTarget delegate
		equals:	1.

]

{ #category : 'tests' }
DelegatorRudesheimTest >> testDelegate2 [
	
	self
		assert:	2 > self basicTarget delegate;
		deny:		2 < self basicTarget delegate.

]

{ #category : 'tests' }
DelegatorRudesheimTest >> testDelegate3 [
	
	self
		assert:	1 + self basicTarget
		equals:	2.

]
