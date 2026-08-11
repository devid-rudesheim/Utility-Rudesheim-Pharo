Class {
	#name : 'DelegatorForAccessingRudesheim',
	#superclass : 'DelegatorRudesheim',
	#instVars : [
		'target',
		'selector'
	],
	#category : 'Rudesheim-Utility-Delegator',
	#package : 'Rudesheim-Utility',
	#tag : 'Delegator'
}

{ #category : 'instance creation' }
DelegatorForAccessingRudesheim class >> targetFrom: aSelector
of: anObject [
	^ self basicNew
		setTargetFrom:	aSelector
		of:	anObject.
]

{ #category : 'options' }
DelegatorForAccessingRudesheim >> delegate [
	^ target
		perform:	selector.
]

{ #category : 'initialization' }
DelegatorForAccessingRudesheim >> setTargetFrom: aSelector
of: anObject [
	target := anObject.
	selector := aSelector.
]
