Class {
	#name : 'ShouldNotNilRudesheim',
	#superclass : 'Error',
	#instVars : [
		'variableName'
	],
	#category : 'Rudesheim-Utility-Base',
	#package : 'Rudesheim-Utility-Base'
}

{ #category : 'signalling' }
ShouldNotNilRudesheim class >> assertNotNil:	anObject
withName:		aVariableNameString [
		
	anObject
		ifNil:
		[
			self
				signalWithVariableName:	aVariableNameString.
		].
]

{ #category : 'signalling' }
ShouldNotNilRudesheim class >> signalWithVariableName:	aString [

	^ self basicNew
		signalWithVariableName:	aString.
]

{ #category : 'accessing' }
ShouldNotNilRudesheim >> defaultVariableName [

	^ ''.
]

{ #category : 'signaling' }
ShouldNotNilRudesheim >> signal [
	
	self shouldNotImplement.
	
]

{ #category : 'signaling' }
ShouldNotNilRudesheim >> signal:	aString [
	
	self shouldNotImplement.
	
]

{ #category : 'signaling' }
ShouldNotNilRudesheim >> signalWithVariableName:	aVariableName [
	
	self
		messageText:	aVariableName.

	super
		signal.
]

{ #category : 'accessing' }
ShouldNotNilRudesheim >> variableName [

	^ variableName
		ifNil:
		[
			variableName := self defaultVariableName.
		].

]
