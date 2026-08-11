"
SyntaxErrorNotificationRudesheim preserves the legacy syntax error notification
protocol used by Rudesheim tooling on images where the platform no longer
provides SyntaxErrorNotification.
"
Class {
	#name : 'SyntaxErrorNotificationRudesheim',
	#superclass : 'Error',
	#instVars : [
		'errorClass',
		'errorCode',
		'doitFlag',
		'errorMessage',
		'location'
	],
	#category : 'Rudesheim-Utility-Base',
	#package : 'Rudesheim-Utility-Base'
}

{ #category : 'signalling' }
SyntaxErrorNotificationRudesheim class >> inClass: aClass
withCode: aString
doitFlag: aBoolean
errorMessage: aMessageString
location: anInteger [

	^ self new
		errorClass:	aClass;
		errorCode:	aString;
		doitFlag:	aBoolean;
		errorMessage:	aMessageString;
		location:	anInteger;
		signal
]

{ #category : 'accessing' }
SyntaxErrorNotificationRudesheim >> doitFlag [

	^ doitFlag
]

{ #category : 'accessing' }
SyntaxErrorNotificationRudesheim >> doitFlag: aBoolean [

	doitFlag := aBoolean
]

{ #category : 'accessing' }
SyntaxErrorNotificationRudesheim >> errorClass [

	^ errorClass
]

{ #category : 'accessing' }
SyntaxErrorNotificationRudesheim >> errorClass: aClass [

	errorClass := aClass
]

{ #category : 'accessing' }
SyntaxErrorNotificationRudesheim >> errorCode [

	^ errorCode
]

{ #category : 'accessing' }
SyntaxErrorNotificationRudesheim >> errorCode: aString [

	errorCode := aString
]

{ #category : 'accessing' }
SyntaxErrorNotificationRudesheim >> errorMessage [

	^ errorMessage
]

{ #category : 'accessing' }
SyntaxErrorNotificationRudesheim >> errorMessage: aString [

	errorMessage := aString
]

{ #category : 'accessing' }
SyntaxErrorNotificationRudesheim >> location [

	^ location
]

{ #category : 'accessing' }
SyntaxErrorNotificationRudesheim >> location: anInteger [

	location := anInteger
]

{ #category : 'accessing' }
SyntaxErrorNotificationRudesheim >> messageText [

	^ self errorMessage
]
