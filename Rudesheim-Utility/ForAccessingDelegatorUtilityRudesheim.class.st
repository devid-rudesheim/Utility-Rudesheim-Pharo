Class {
	#name : 'ForAccessingDelegatorUtilityRudesheim',
	#superclass : 'DelegatorUtilityRudesheim',
	#instVars : [
		'target',
		'selector'
	],
	#category : 'Rudesheim-Utility-Delegator',
	#package : 'Rudesheim-Utility',
	#tag : 'Delegator'
}

{ #category : 'instance creation' }
ForAccessingDelegatorUtilityRudesheim class >> targetFrom: aSelector
of: anObject [
	^ self basicNew
		setTargetFrom:	aSelector
		of:	anObject.
]

{ #category : 'options' }
ForAccessingDelegatorUtilityRudesheim >> delegate [
	^ target
		perform:	selector.
]

{ #category : 'initialization' }
ForAccessingDelegatorUtilityRudesheim >> setTargetFrom: aSelector
of: anObject [
	target := anObject.
	selector := aSelector.
]
