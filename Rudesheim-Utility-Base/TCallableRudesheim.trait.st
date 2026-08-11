"
A TCallableRudesheim gives a class a block-compatible calling interface (#value: through #value:value:value:value:, matching BlockClosure's fixed-arity protocol), all delegating to a single required #valueWithArguments:. Generic, not specific to any one package's domain.
"
Trait {
	#name : 'TCallableRudesheim',
	#category : 'Rudesheim-Utility-Base',
	#package : 'Rudesheim-Utility-Base'
}

{ #category : 'evaluating' }
TCallableRudesheim >> value [

	^ self valueWithArguments: #().
]

{ #category : 'evaluating' }
TCallableRudesheim >> value: anObject [

	^ self valueWithArguments: { anObject }.
]

{ #category : 'evaluating' }
TCallableRudesheim >> value: anObject value: anotherObject [

	^ self valueWithArguments: { anObject. anotherObject }.
]

{ #category : 'evaluating' }
TCallableRudesheim >> value: anObject value: anotherObject value: aThirdObject [

	^ self valueWithArguments: { anObject. anotherObject. aThirdObject }.
]

{ #category : 'evaluating' }
TCallableRudesheim >> value: anObject value: anotherObject value: aThirdObject value: aFourthObject [

	^ self valueWithArguments: { anObject. anotherObject. aThirdObject. aFourthObject }.
]

{ #category : 'evaluating' }
TCallableRudesheim >> valueWithArguments: aCollection [

	^ self subclassResponsibility.
]
