"
A MessageForwardingDelegatorRudesheim is a DelegatorRudesheim that hands every message it does not itself implement to its delegate as a single reified #processMessage: send, instead of re-sending the original message (see DelegatorRudesheim>>doesNotUnderstand:). Use this when the delegate is not a stand-in for a real object of the same kind, but a policy object that decides what to do with arbitrary incoming messages (e.g. building a new object from the captured message) by implementing one #processMessage: method.

Subclasses that want to post-process the delegate's #processMessage: result (e.g. re-wrapping it for continued capture) should override #forwardedResultRudesheim: rather than #doesNotUnderstand: itself, keeping the message-forwarding mechanism here and the result policy in the subclass.
"
Class {
	#name : 'MessageForwardingDelegatorRudesheim',
	#superclass : 'BasicDelegatorRudesheim',
	#category : 'Rudesheim-Utility-Private',
	#package : 'Rudesheim-Utility-Private'
}

{ #category : 'options' }
MessageForwardingDelegatorRudesheim >> doesNotUnderstand: aMessage [
	^ self
		forwardedResultRudesheim:
		(
			self delegate
				processMessage:	aMessage
		).
]

{ #category : 'options' }
MessageForwardingDelegatorRudesheim >> forwardedResultRudesheim: anObject [
	^ anObject.
]
