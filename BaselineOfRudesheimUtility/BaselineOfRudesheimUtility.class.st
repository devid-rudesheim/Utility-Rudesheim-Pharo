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
				baseline:	'RudesheimKernel'
				with:
				[
					spec repository: 'github://devid-rudesheim/Kernel-Rudesheim-Pharo:develop'
				];
				package:	'Rudesheim-Utility-Base'
				with:
				[
					spec
						requires:	#('RudesheimKernel').
				];
				package:	'Rudesheim-Utility-Private'
				with:
				[
					spec
						requires:	#('Rudesheim-Utility-Base' 'RudesheimKernel').
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
