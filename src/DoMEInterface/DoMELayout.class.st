Class {
	#name : #DoMELayout,
	#superclass : #SpPresenter,
	#instVars : [
		'presenter'
	],
	#category : #DoMEInterface
}

{ #category : #'as yet unclassified' }
DoMELayout >> defaultLayout [
	

	^ SpPanedLayout newTopToBottom
]

{ #category : #'as yet unclassified' }
DoMELayout >> showPresenter [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| button1 |
	
	"self layout: SpPanedLayout newTopToBottom.
	self layout add: (button1 := self newButton).
	button1 label: 'I am a button'."
	
	^SpPanedLayout 
]
