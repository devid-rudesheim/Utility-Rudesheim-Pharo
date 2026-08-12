"
A RHScopeForStreamTest is a test class for testing the behavior of RHScopeForStream
"
Class {
	#name : 'ForStreamBlockScopeUtilityRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#instVars : [
		'sourceStream'
	],
	#category : 'Rudesheim-Utility-Private-Tests-Block-Scope',
	#package : 'Rudesheim-Utility-Private-Tests',
	#tag : 'Block-Scope'
}

{ #category : 'accessing' }
ForStreamBlockScopeUtilityRudesheimTest class >> targetClass [

	^ Rudesheim Utility BlockScope ForStream
]

{ #category : 'accessing' }
ForStreamBlockScopeUtilityRudesheimTest >> defaultBasicTarget [

	^ self targetClass
		on:	self sourceStream.
]

{ #category : 'accessing' }
ForStreamBlockScopeUtilityRudesheimTest >> defaultSourceStream [
	
	^ MockObject new
		on:	#close
		yourself.
]

{ #category : 'tests' }
ForStreamBlockScopeUtilityRudesheimTest >> runDo0 [
	|
		times
	|
	
	times := 0.
	
	self
		should:
		[
			self basicTarget
				do:
				[ :stream |
					times := 1.
					
					self
						assert:	self sourceStream
						equals:	stream.

					1 / 0.
				].
				
				self fail.
		]
		raise:	ZeroDivide.
	
	self
		assert:	1
		equals:	times.
	
	self
		verify:	self sourceStream.
]

{ #category : 'running' }
ForStreamBlockScopeUtilityRudesheimTest >> setUp [

	super setUp.
	
	self
		sourceStream:	nil.
]

{ #category : 'accessing' }
ForStreamBlockScopeUtilityRudesheimTest >> sourceStream [

	^ sourceStream
		ifNil:
		[
			sourceStream := self defaultSourceStream.
		].
]

{ #category : 'accessing' }
ForStreamBlockScopeUtilityRudesheimTest >> sourceStream: aStream [

	sourceStream := aStream
]

{ #category : 'tests' }
ForStreamBlockScopeUtilityRudesheimTest >> testDo [

	self
		testDo0_0;
		tearDown;
		setUp;
		testDo0_1.
]

{ #category : 'tests' }
ForStreamBlockScopeUtilityRudesheimTest >> testDo0_0 [

	self runDo0.
]

{ #category : 'tests' }
ForStreamBlockScopeUtilityRudesheimTest >> testDo0_1 [

	self
		basicTarget:	self sourceStream intoRHScope;
		runDo0.
]
