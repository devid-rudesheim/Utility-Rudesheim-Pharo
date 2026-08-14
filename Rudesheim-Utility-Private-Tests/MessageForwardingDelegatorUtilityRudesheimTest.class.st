Class {
	#name : 'MessageForwardingDelegatorUtilityRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Utility-Private-Tests-Delegator',
	#package : 'Rudesheim-Utility-Private-Tests',
	#tag : 'Delegator'
}

{ #category : 'accessing' }
MessageForwardingDelegatorUtilityRudesheimTest class >> targetClass [
	^ MessageForwardingDelegatorUtilityRudesheim.
]

{ #category : 'accessing' }
MessageForwardingDelegatorUtilityRudesheimTest >> defaultBasicTarget [
	^ self targetClass
		delegateTo:	self sourceValue.
]

{ #category : 'accessing' }
MessageForwardingDelegatorUtilityRudesheimTest >> defaultSourceValue [
	^ CannedDelegateForTestUtilityRudesheim
		returning:	42.
]

{ #category : 'tests' }
MessageForwardingDelegatorUtilityRudesheimTest >> testDelegate [
	self
		assert:	self basicTarget delegate
		equals:	self sourceValue.
]

{ #category : 'tests' }
MessageForwardingDelegatorUtilityRudesheimTest >> testDoesNotUnderstandForwardsProcessMessageToDelegate [
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
MessageForwardingDelegatorUtilityRudesheimTest >> testForwardedResultRudesheimDefaultsToIdentity [
	self
		assert:
		(
			self basicTarget
				forwardedResultRudesheim:	99
		)
		equals:	99.
]

{ #category : 'tests' }
MessageForwardingDelegatorUtilityRudesheimTest >> testPeekDelegateRudesheim [
	self
		assert:	self basicTarget peekDelegateRudesheim
		equals:	self sourceValue.
]
