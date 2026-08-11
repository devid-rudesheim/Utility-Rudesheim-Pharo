Class {
	#name : 'DelegatorRudesheim',
	#superclass : 'ProtoObject',
	#category : 'Rudesheim-Utility-Delegator',
	#package : 'Rudesheim-Utility',
	#tag : 'Delegator'
}

{ #category : 'namespace' }
DelegatorRudesheim class >> Basic [ ^ BasicDelegatorRudesheim
]

{ #category : 'namespace' }
DelegatorRudesheim class >> ForAccessing [ ^ DelegatorForAccessingRudesheim
]

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
		sendTo: self delegate.
]
