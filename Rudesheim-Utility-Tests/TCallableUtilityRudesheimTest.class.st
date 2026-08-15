Class {
	#name : 'TCallableUtilityRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Utility-Tests',
	#package : 'Rudesheim-Utility-Tests'
}

{ #category : 'accessing' }
TCallableUtilityRudesheimTest class >> targetClass [
	^ RecordingCallableForTestRudesheim.
]

{ #category : 'tests' }
TCallableUtilityRudesheimTest >> testValue [
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
TCallableUtilityRudesheimTest >> testValue1 [
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
TCallableUtilityRudesheimTest >> testValue2 [
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
TCallableUtilityRudesheimTest >> testValue3 [
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
TCallableUtilityRudesheimTest >> testValue4 [
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
