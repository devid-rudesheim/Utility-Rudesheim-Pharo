"
A PeekDelegateRudesheimTest verifies Object>>peekDelegateRudesheim's default (non-delegator) behavior: any plain object answers itself, so callers can send #peekDelegateRudesheim uniformly without first checking whether the receiver is a DelegatorRudesheim.
"
Class {
	#name : 'PeekDelegateRudesheimTest',
	#superclass : 'TestCase',
	#category : 'Rudesheim-Utility-Tests',
	#package : 'Rudesheim-Utility-Tests'
}

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
		assert:
		(
			aString peekDelegateRudesheim
				== aString
		).
]
