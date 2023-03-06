Class {
	#name : #DoMELayout,
	#superclass : #SpPresenter,
	#instVars : [
		'presenter',
		'menu',
		'topToolbar',
		'leftToolbar'
	],
	#category : #DoMEInterface
}

{ #category : #'as yet unclassified' }
DoMELayout >> defaultLayout [
	
	^ presenter 
]

{ #category : #'as yet unclassified' }
DoMELayout >> initializePresenters [ 

	super initializePresenters.
	
	self intializeMenu .
	self intializeTopToolbar.
	
	presenter := SpBoxLayout newTopToBottom   
		add:menu
		"expand:false"
		height:20;
		add: topToolbar 
		"expand: false"
		height:20;
	yourself.
]

{ #category : #'as yet unclassified' }
DoMELayout >> intializeMenu [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	menu := Menu new addTopMenu.



	

]

{ #category : #'as yet unclassified' }
DoMELayout >> intializeTopToolbar [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	topToolbar := TopToolbar new topToolBar.


]
