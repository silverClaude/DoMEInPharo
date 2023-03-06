Class {
	#name : #DoMELayout,
	#superclass : #SpPresenter,
	#instVars : [
		'menu',
		'topToolbar',
		'leftToolbar'
	],
	#category : #DoMEInterface
}

{ #category : #'as yet unclassified' }
DoMELayout >> defaultLayout [
	
	self intializeMenu .

	^ SpBoxLayout newTopToBottom
		add:menu;
		"expand: false;"
		yourself.
]

{ #category : #'as yet unclassified' }
DoMELayout >> initializePresenters [ 

"	| largeLayout |
	super initializePresenters.

	largeLayout := SpBoxLayout newTopToBottom.
	
	
	self addFieldTo: largeLayout.
"
]

{ #category : #'as yet unclassified' }
DoMELayout >> intializeMenu [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	menu := self newMenuBar   
		addItem:(
			Menu new addEditButton;
			yourself);
		addItem:(
			Menu new addFileButton;
		yourself);
	yourself.
	

]
