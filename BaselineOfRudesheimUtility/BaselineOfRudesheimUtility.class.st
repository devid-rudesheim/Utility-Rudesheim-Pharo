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
		for: #common
		do:
		[
			spec
				package: 'Rudesheim-Utility-Private';

				package: 'Rudesheim-Utility'
				with:
				[
					spec
						requires: #( 'Rudesheim-Utility-Private' )
				];

				package: 'Rudesheim-Utility-Private-Tests'
				with:
				[
					spec
						requires: #( 'Rudesheim-Utility' )
				];

				package: 'Rudesheim-Utility-Tests'
				with:
				[
					spec
						requires: #( 'Rudesheim-Utility' )
				];

				group:		#core
				with:		#( 'Rudesheim-Utility-Private' 'Rudesheim-Utility' );

				group:		#tests
				with:		#( 'Rudesheim-Utility-Private-Tests' 'Rudesheim-Utility-Tests' );

				group:		#default
				with:		#( #core ).
		]
]
