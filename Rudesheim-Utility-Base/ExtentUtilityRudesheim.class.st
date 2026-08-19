Class {
	#name : 'ExtentUtilityRudesheim',
	#superclass : 'Object',
	#instVars : [
		'width',
		'height'
	],
	#category : 'Rudesheim-Utility-Base',
	#package : 'Rudesheim-Utility-Base'
}

{ #category : 'instance creation' }
ExtentUtilityRudesheim class >> width:	aWidthInteger
height:	aHeightInteger [

	^ super new
		setWidth:	aWidthInteger
		height:		aHeightInteger;
		yourself
]

{ #category : 'accessing' }
ExtentUtilityRudesheim >> width [

	^ width
]

{ #category : 'accessing' }
ExtentUtilityRudesheim >> columns [

	^ self width
]

{ #category : 'accessing' }
ExtentUtilityRudesheim >> height [

	^ height
]

{ #category : 'accessing' }
ExtentUtilityRudesheim >> rows [

	^ self height
]

{ #category : 'initialization' }
ExtentUtilityRudesheim >> setWidth:	aWidthInteger
height:	aHeightInteger [

	width := aWidthInteger.
	height := aHeightInteger.
]
