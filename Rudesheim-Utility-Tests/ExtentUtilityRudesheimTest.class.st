Class {
	#name : 'ExtentUtilityRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Utility-Tests',
	#package : 'Rudesheim-Utility-Tests'
}

{ #category : 'accessing' }
ExtentUtilityRudesheimTest class >> targetClass [

	^ Rudesheim Utility Extent
]

{ #category : 'accessing' }
ExtentUtilityRudesheimTest >> defaultBasicTarget [

	^ self targetClass
		width:	4
		height:	3
]

{ #category : 'tests' }
ExtentUtilityRudesheimTest >> testColumnsAliasesWidth [

	self
		assert:	self basicTarget columns
		equals:	self basicTarget width
]

{ #category : 'tests' }
ExtentUtilityRudesheimTest >> testRowsAliasesHeight [

	self
		assert:	self basicTarget rows
		equals:	self basicTarget height
]

{ #category : 'tests' }
ExtentUtilityRudesheimTest >> testWidthHeightRoundTrip [

	|
		extent
	|

	extent :=
		self targetClass
			width:	4
			height:	3.

	self
		assert:	extent width
		equals:	4.

	self
		assert:	extent height
		equals:	3
]
