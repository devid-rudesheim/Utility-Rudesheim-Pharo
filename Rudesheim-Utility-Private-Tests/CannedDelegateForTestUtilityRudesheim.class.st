"
Test-support double: a #processMessage: implementation that records the last message it was asked to process and returns a canned value.
"
Class {
	#name : 'CannedDelegateForTestUtilityRudesheim',
	#superclass : 'Object',
	#instVars : [
		'lastMessage',
		'cannedValue'
	],
	#category : 'Rudesheim-Utility-Private-Tests-Support',
	#package : 'Rudesheim-Utility-Private-Tests',
	#tag : 'Support'
}

{ #category : 'instance creation' }
CannedDelegateForTestUtilityRudesheim class >> returning: anObject [
	^ self new
		setCannedValue:	anObject.
]

{ #category : 'accessing' }
CannedDelegateForTestUtilityRudesheim >> lastMessage [
	^ lastMessage.
]

{ #category : 'evaluating' }
CannedDelegateForTestUtilityRudesheim >> processMessage: aMessage [
	lastMessage := aMessage.
	^ cannedValue.
]

{ #category : 'initialization' }
CannedDelegateForTestUtilityRudesheim >> setCannedValue: anObject [
	cannedValue := anObject.
]
