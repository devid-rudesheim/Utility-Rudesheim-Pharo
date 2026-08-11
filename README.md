# Rudesheim Utility for Pharo

Rudesheim Utility is the shared utility layer used by the Rudesheim Pharo projects.
It contains small reusable building blocks such as delegators, callable traits, and common test support.

## Installation

Load the default project group with Metacello:

```smalltalk
Metacello new
	baseline: 'RudesheimUtility';
	repository: 'github://devid-rudesheim/Utility-Rudesheim-Pharo:main';
	load
```

The default group loads the core utility packages.

## Groups

- `core`: runtime utility packages.
- `tests`: SUnit tests for the utility packages.
- `default`: aliases `core`.

To load the tests:

```smalltalk
Metacello new
	baseline: 'RudesheimUtility';
	repository: 'github://devid-rudesheim/Utility-Rudesheim-Pharo:main';
	load: #(tests)
```

## Run Tests

After loading the test group, run:

```smalltalk
TestSuite new
	addTest: (RPackageOrganizer default packageNamed: 'Rudesheim-Utility-Tests') asTestSuite;
	addTest: (RPackageOrganizer default packageNamed: 'Rudesheim-Utility-Private-Tests') asTestSuite;
	run
```
