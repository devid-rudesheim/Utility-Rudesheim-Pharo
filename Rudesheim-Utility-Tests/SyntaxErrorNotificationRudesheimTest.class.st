Class {
	#name : 'SyntaxErrorNotificationRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Utility-Tests',
	#package : 'Rudesheim-Utility-Tests'
}

{ #category : 'accessing' }
SyntaxErrorNotificationRudesheimTest class >> targetClass [

	^ SyntaxErrorNotificationRudesheim.
]

{ #category : 'tests' }
SyntaxErrorNotificationRudesheimTest >> testNamespace [

	self
		assert:	Rudesheim Utility SyntaxErrorNotification
		equals:	self targetClass
]

{ #category : 'tests' }
SyntaxErrorNotificationRudesheimTest >> testSignalCarriesLegacySyntaxErrorFields [
	|
		statement
	|

	statement :=
	[
		self targetClass
			inClass:		self class
			withCode:		''
			doitFlag:		false
			errorMessage:	'Message pattern expected'
			location: 		1.
	].

	self
		should:	statement
		raise:	self targetClass.

	statement
		on:	self targetClass
		do:
		[ :exception |
			self
				assert:	'Message pattern expected'
				equals: exception messageText;

				assert:	''
				equals: exception errorCode;

				assert:	self class
				equals: exception errorClass;

				assert:	exception messageText
				equals: exception errorMessage;

				assert:	1
				equals: exception location;

				deny: exception doitFlag.
		]
]
