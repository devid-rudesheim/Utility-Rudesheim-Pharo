"
A PeekDelegateRudesheimTest verifies Object>>peekDelegateRudesheim's default (non-delegator) behavior: any plain object answers itself, so callers can send #peekDelegateRudesheim uniformly without first checking whether the receiver is a DelegatorUtilityRudesheim.
"
Class {
	#name : 'PeekDelegateRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Utility-Tests',
	#package : 'Rudesheim-Utility-Tests'
}

{ #category : 'accessing' }
PeekDelegateRudesheimTest class >> targetClass [
	^ Object.
]

{ #category : 'tests' }
PeekDelegateRudesheimTest >> testIntegerAnswersItself [
	self
		assert:	3 peekDelegateRudesheim
		equals:	3.
]

{ #category : 'tests' }
PeekDelegateRudesheimTest >> testStringAnswersItself [
	|
		aString
	|

	aString := 'text'.

	self
		assert:	aString peekDelegateRudesheim == aString.
]
