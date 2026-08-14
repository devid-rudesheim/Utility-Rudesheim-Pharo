Class {
	#name : 'DelegatorUtilityRudesheim',
	#superclass : 'ProtoObject',
	#category : 'Rudesheim-Utility-Base-Delegator',
	#package : 'Rudesheim-Utility-Base',
	#tag : 'Delegator'
}

{ #category : 'instance creation' }
DelegatorUtilityRudesheim class >> new [
	self shouldNotImplement.
]

{ #category : 'instance creation' }
DelegatorUtilityRudesheim class >> new: anInteger [
	self shouldNotImplement.
]

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
