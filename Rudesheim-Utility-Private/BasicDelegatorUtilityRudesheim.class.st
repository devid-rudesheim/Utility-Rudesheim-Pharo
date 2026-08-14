Class {
	#name : 'BasicDelegatorUtilityRudesheim',
	#superclass : 'DelegatorUtilityRudesheim',
	#instVars : [
		'delegate'
	],
	#category : 'Rudesheim-Utility-Private',
	#package : 'Rudesheim-Utility-Private'
}

{ #category : 'instance creation' }
BasicDelegatorUtilityRudesheim class >> delegateTo: anObject [
	^ self basicNew
		delegate:	anObject.
]

{ #category : 'options' }
BasicDelegatorUtilityRudesheim >> delegate [
	^ delegate.
]

{ #category : 'options' }
BasicDelegatorUtilityRudesheim >> delegate: anObject [
	delegate := anObject.
]
