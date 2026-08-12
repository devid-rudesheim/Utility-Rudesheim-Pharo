Extension { #name : 'Object' }

{ #category : '*Rudesheim-Utility' }
Object >> intoRHScope [

	^ Rudesheim Utility BlockScope ForStream
		on:	self.
]
