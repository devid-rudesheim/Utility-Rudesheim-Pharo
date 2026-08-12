Class {
	#name : 'DelegatorRudesheim',
	#superclass : 'ProtoObject',
	#category : 'Rudesheim-Utility-Base-Delegator',
	#package : 'Rudesheim-Utility-Base',
	#tag : 'Delegator'
}

{ #category : 'instance creation' }
DelegatorRudesheim class >> new [
	self shouldNotImplement.
]

{ #category : 'instance creation' }
DelegatorRudesheim class >> new: anInteger [
	self shouldNotImplement.
]

{ #category : 'options' }
DelegatorRudesheim >> delegate [
	self subclassResponsibility.
]

{ #category : 'options' }
DelegatorRudesheim >> doesNotUnderstand: aMessage [
	^ aMessage
		sendTo:	self delegate.
]
