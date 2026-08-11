"
Test-support double: a TCallableRudesheim implementation that just records the arguments collection it was invoked with.
"
Class {
	#name : 'RecordingCallableForTestRudesheim',
	#superclass : 'Object',
	#traits : 'TCallableRudesheim',
	#classTraits : 'TCallableRudesheim classTrait',
	#instVars : [
		'lastArguments'
	],
	#category : 'Rudesheim-Utility-Tests',
	#package : 'Rudesheim-Utility-Tests'
}

{ #category : 'accessing' }
RecordingCallableForTestRudesheim >> lastArguments [

	^ lastArguments.
]

{ #category : 'evaluating' }
RecordingCallableForTestRudesheim >> valueWithArguments: aCollection [

	lastArguments := aCollection.
]
