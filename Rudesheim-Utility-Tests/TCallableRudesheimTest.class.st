Class {
	#name : 'TCallableRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Utility-Tests',
	#package : 'Rudesheim-Utility-Tests'
}

{ #category : 'accessing' }
TCallableRudesheimTest class >> targetClass [
	^ RecordingCallableForTestRudesheim.
]

{ #category : 'tests' }
TCallableRudesheimTest >> testValue [
	self
		basicTarget
		value.

	self
		assert:	
		self
			basicTarget
			lastArguments
		equals:	#().
]

{ #category : 'tests' }
TCallableRudesheimTest >> testValue1 [
	self basicTarget
		value:	1.

	self
		assert:	
		self
			basicTarget
			lastArguments
		equals:	{1}.
]

{ #category : 'tests' }
TCallableRudesheimTest >> testValue2 [
	self basicTarget
		value:	1
		value:	2.

	self
		assert:	
		self
			basicTarget
			lastArguments
		equals:	{1 .  2}.
]

{ #category : 'tests' }
TCallableRudesheimTest >> testValue3 [
	self basicTarget
		value:	1
		value:	2
		value:	3.

	self
		assert:	
		self
			basicTarget
			lastArguments
		equals:	{1 .  2 .  3}.
]

{ #category : 'tests' }
TCallableRudesheimTest >> testValue4 [
	self basicTarget
		value:	1
		value:	2
		value:	3
		value:	4.

	self
		assert:	
		self
			basicTarget
			lastArguments
		equals:	{1 .  2 .  3 .  4}.
]
