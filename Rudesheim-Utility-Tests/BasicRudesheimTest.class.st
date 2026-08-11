Class {
	#name : 'BasicRudesheimTest',
	#superclass : 'TestCase',
	#instVars : [
		'basicTarget',
		'sourceValue',
		'expectedValue'
	],
	#category : 'Rudesheim-Utility-Tests',
	#package : 'Rudesheim-Utility-Tests'
}

{ #category : 'accessing' }
BasicRudesheimTest class >> isAbstract [

	^ self = BasicRudesheimTest
]

{ #category : 'accessing' }
BasicRudesheimTest class >> targetClass [

	^ self subclassResponsibility.
]

{ #category : 'accessing' }
BasicRudesheimTest >> basicTarget [

	^ basicTarget
		ifNil:
		[
			basicTarget := self defaultBasicTarget. 
		].
]

{ #category : 'accessing' }
BasicRudesheimTest >> basicTarget: anObject [

	basicTarget := anObject.
]

{ #category : 'accessing' }
BasicRudesheimTest >> defaultBasicTarget [

	^ self targetClass new.
]

{ #category : 'accessing' }
BasicRudesheimTest >> defaultExpectedValue [

	^ 0
]

{ #category : 'accessing' }
BasicRudesheimTest >> defaultSourceValue [

	^ 0
]

{ #category : 'accessing' }
BasicRudesheimTest >> expectedValue [

	^ expectedValue
		ifNil:
		[
			expectedValue :=  self defaultExpectedValue. 
		]
]

{ #category : 'accessing' }
BasicRudesheimTest >> expectedValue: anObject [

	expectedValue := anObject
]

{ #category : 'running' }
BasicRudesheimTest >> setUp [

	self
		expectedValue: 		nil;
		sourceValue: 		nil;
		basicTarget:		nil.
]

{ #category : 'accessing' }
BasicRudesheimTest >> sourceValue [

	^ sourceValue
		ifNil:
		[ 
			sourceValue := self defaultSourceValue.
		].
]

{ #category : 'accessing' }
BasicRudesheimTest >> sourceValue: anObject [

	sourceValue := anObject
]

{ #category : 'accessing' }
BasicRudesheimTest >> targetClass [

	^ self class targetClass.
]

{ #category : 'tests' }
BasicRudesheimTest >> testBasicInstanceCreation [

	self
		testBasicInstanceCreation0.
]

{ #category : 'tests' }
BasicRudesheimTest >> testBasicInstanceCreation0 [

	self
		assert:	self basicTarget class
		equals:	self targetClass.
]
