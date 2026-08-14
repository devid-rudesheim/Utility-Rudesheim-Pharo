Class {
	#name : 'MessageForwardingDelegatorRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Utility-Private-Tests-Delegator',
	#package : 'Rudesheim-Utility-Private-Tests',
	#tag : 'Delegator'
}

{ #category : 'accessing' }
MessageForwardingDelegatorRudesheimTest class >> targetClass [
	^ MessageForwardingDelegatorRudesheim.
]

{ #category : 'accessing' }
MessageForwardingDelegatorRudesheimTest >> defaultBasicTarget [
	^ self targetClass
		delegateTo:	self sourceValue.
]

{ #category : 'accessing' }
MessageForwardingDelegatorRudesheimTest >> defaultSourceValue [
	^ CannedDelegateForTestRudesheim
		returning:	42.
]

{ #category : 'tests' }
MessageForwardingDelegatorRudesheimTest >> testDelegate [
	self
		assert:	self basicTarget delegate
		equals:	self sourceValue.
]

{ #category : 'tests' }
MessageForwardingDelegatorRudesheimTest >> testDoesNotUnderstandForwardsProcessMessageToDelegate [
	self
		assert:
		(
			self basicTarget
				foo:	1
				bar:	2
		)
		equals:	42.

	self
		assert:	self sourceValue lastMessage selector
		equals:	#foo:bar:.

	self
		assert:	self sourceValue lastMessage arguments
		equals:	{1 . 2}.
]

{ #category : 'tests' }
MessageForwardingDelegatorRudesheimTest >> testForwardedResultRudesheimDefaultsToIdentity [
	self
		assert:
		(
			self basicTarget
				forwardedResultRudesheim:	99
		)
		equals:	99.
]

{ #category : 'tests' }
MessageForwardingDelegatorRudesheimTest >> testPeekDelegateRudesheim [
	self
		assert:	self basicTarget peekDelegateRudesheim
		equals:	self sourceValue.
]
