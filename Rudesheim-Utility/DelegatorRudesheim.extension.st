Extension { #name : 'DelegatorRudesheim' }

{ #category : '*Rudesheim-Utility' }
DelegatorRudesheim class >> Basic [
	^ BasicDelegatorRudesheim.
]

{ #category : '*Rudesheim-Utility' }
DelegatorRudesheim class >> ForAccessing [
	^ DelegatorForAccessingRudesheim.
]

{ #category : '*Rudesheim-Utility' }
DelegatorRudesheim class >> ForProcessingMessage [
	^ MessageForwardingDelegatorRudesheim.
]
