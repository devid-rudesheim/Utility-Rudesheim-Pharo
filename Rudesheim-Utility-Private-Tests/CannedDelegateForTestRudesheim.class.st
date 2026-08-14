"
Test-support double: a #processMessage: implementation that records the last message it was asked to process and returns a canned value.
"
Class {
	#name : 'CannedDelegateForTestRudesheim',
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
CannedDelegateForTestRudesheim class >> returning: anObject [
	^ self new
		setCannedValue:	anObject.
]

{ #category : 'accessing' }
CannedDelegateForTestRudesheim >> lastMessage [
	^ lastMessage.
]

{ #category : 'evaluating' }
CannedDelegateForTestRudesheim >> processMessage: aMessage [
	lastMessage := aMessage.
	^ cannedValue.
]

{ #category : 'initialization' }
CannedDelegateForTestRudesheim >> setCannedValue: anObject [
	cannedValue := anObject.
]
