Class {
	#name : 'DelegatorUtilityRudesheim',
	#superclass : 'ProtoObject',
	#traits : 'TShouldntNewRudesheim',
	#classTraits : 'TShouldntNewRudesheim classTrait',
	#category : 'Rudesheim-Utility-Base-Delegator',
	#package : 'Rudesheim-Utility-Base',
	#tag : 'Delegator'
}

{ #category : 'options' }
DelegatorUtilityRudesheim >> delegate [
	self subclassResponsibility.
]

{ #category : 'options' }
DelegatorUtilityRudesheim >> doesNotUnderstand: aMessage [
	^ aMessage
		sendTo:	self delegate.
]

{ #category : 'options' }
DelegatorUtilityRudesheim >> peekDelegateRudesheim [
	^ self delegate.
]
