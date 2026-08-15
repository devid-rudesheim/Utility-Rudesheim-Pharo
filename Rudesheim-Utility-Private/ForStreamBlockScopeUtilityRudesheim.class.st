Class {
	#name : 'ForStreamBlockScopeUtilityRudesheim',
	#superclass : 'Object',
	#traits : 'TShouldntNewUtilityRudesheim',
	#classTraits : 'TShouldntNewUtilityRudesheim classTrait',
	#instVars : [
		'stream'
	],
	#category : 'Rudesheim-Utility-Private-Block-Scope',
	#package : 'Rudesheim-Utility-Private',
	#tag : 'Block-Scope'
}

{ #category : 'instance creation' }
ForStreamBlockScopeUtilityRudesheim class >> on:	aStream [
	
	^ super new
		setStream:	aStream.
]

{ #category : 'enumerating' }
ForStreamBlockScopeUtilityRudesheim >> do: aBlock [

	^
	[
		aBlock
			cull:	self stream.
	]
		ensure:
		[
			self stream close.
		].
]

{ #category : 'initialization' }
ForStreamBlockScopeUtilityRudesheim >> setStream: aStream [

	stream := aStream.
]

{ #category : 'accessing' }
ForStreamBlockScopeUtilityRudesheim >> stream [

	^ stream
]
