"
A RHShouldNotNilTest is a test class for testing the behavior of RHShouldNotNil
"
Class {
	#name : 'ShouldNotNilRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Utility-Tests',
	#package : 'Rudesheim-Utility-Tests'
}

{ #category : 'accessing' }
ShouldNotNilRudesheimTest class >> targetClass [

	^ ShouldNotNilRudesheim.
]

{ #category : 'tests' }
ShouldNotNilRudesheimTest >> runAssertNotNilWithName0 [

	self
		should:
		[
			self targetClass
				assertNotNil:	nil
				withName:		'value'
		]
		raise:	self targetClass.
]

{ #category : 'tests' }
ShouldNotNilRudesheimTest >> runAssertNotNilWithName1 [
	
	[
		self targetClass
			assertNotNil:	nil
			withName:		self expectedValue
	]
		on:	self targetClass
		do:
		[ :exception |
		
			self
				assert:	self expectedValue
				equals:	exception messageText.
			
			^ self.
		].
	
	self fail.
]

{ #category : 'tests' }
ShouldNotNilRudesheimTest >> testAssertNotNilWithName [

	self
		testAssertNotNilWithName0_0;
		tearDown;
		setUp;
		testAssertNotNilWithName1_0;
		tearDown;
		setUp;
		testAssertNotNilWithName1_1.
]

{ #category : 'tests' }
ShouldNotNilRudesheimTest >> testAssertNotNilWithName0_0 [

	self runAssertNotNilWithName0.
]

{ #category : 'tests' }
ShouldNotNilRudesheimTest >> testAssertNotNilWithName1_0 [

	self
		expectedValue:	'one';
		runAssertNotNilWithName1.
]

{ #category : 'tests' }
ShouldNotNilRudesheimTest >> testAssertNotNilWithName1_1 [

	self
		expectedValue:	'two';
		runAssertNotNilWithName1.
]
