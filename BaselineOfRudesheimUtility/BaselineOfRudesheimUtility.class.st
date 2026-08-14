Class {
	#name : 'BaselineOfRudesheimUtility',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRudesheimUtility',
	#package : 'BaselineOfRudesheimUtility'
}

{ #category : 'baselines' }
BaselineOfRudesheimUtility >> baseline: spec [
	<baseline>

	spec
		for:	#common
		do:
		[
			spec
				package:	'Rudesheim-Utility-Base';
				package:	'Rudesheim-Utility-Private'
				with:
				[
					spec
						requires:	#('Rudesheim-Utility-Base').
				];
				package:	'Rudesheim-Utility'
				with:
				[
					spec
						requires:	#('Rudesheim-Utility-Base' 'Rudesheim-Utility-Private').
				];
				package:	'Rudesheim-Utility-Private-Tests'
				with:
				[
					spec
						requires:	#('Rudesheim-Utility' 'Rudesheim-Utility-Tests').
				];
				package:	'Rudesheim-Utility-Tests'
				with:
				[
					spec
						requires:	#('Rudesheim-Utility').
				];
				group:	#core
				with:	#('Rudesheim-Utility-Base' 'Rudesheim-Utility-Private' 'Rudesheim-Utility');
				group:	#tests
				with:	#('Rudesheim-Utility-Tests' 'Rudesheim-Utility-Private-Tests');
				group:	#default
				with:	#(#core).
		].
]
