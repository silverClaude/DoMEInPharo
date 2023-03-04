Class {
	#name : #DoMELayout,
	#superclass : #Object,
	#instVars : [
		'presenter'
	],
	#category : #DoMEInterface
}

{ #category : #'as yet unclassified' }
DoMELayout >> showPresenter [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| button1 |
	"Instantiate a new presenter"
	presenter := SpPresenter new.
	"Optionally, define an application for the presenter"
	presenter application: SpApplication new.
	presenter layout: SpPanedLayout newTopToBottom.
	presenter open.
	presenter layout add: (button1 := presenter newButton).
	button1 label: 'I am a button'.
]
