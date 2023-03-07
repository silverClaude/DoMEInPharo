Class {
	#name : #DoMELayout,
	#superclass : #SpPresenter,
	#instVars : [
		'window',
		'presenter',
		'menu',
		'topToolbar',
		'leftToolbar'
	],
	#category : #DoMEInterface
}

{ #category : #'as yet unclassified' }
DoMELayout >> defaultLayout [
	

	"self initializeWindow: window."
	
	^ presenter 

]

{ #category : #initialization }
DoMELayout >> initializePresenters [ 


	self intializeMenu .
	self intializeTopToolbar.
	
	presenter := SpBoxLayout newTopToBottom   
		add:menu
		"expand:false"
		height:20;
		add: topToolbar 
		"expand: false"
		height:20;
		add: self intializeLeftToolbarAndCanvas ;"need change"
	yourself.
]

{ #category : #initialization }
DoMELayout >> initializeTitle: aString [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	^aString
]

{ #category : #initialization }
DoMELayout >> initializeWindow: aWindowPresenter [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	

		super 	initializeWindow: aWindowPresenter.
			
		aWindowPresenter
		title: 'DoME';
		initialExtent: "self initialExtent" 800@600;
		windowIcon: self windowIcon.
		"openWithLayout: presenter."
		
		
]

{ #category : #'as yet unclassified' }
DoMELayout >> intializeLeftToolbarAndCanvas [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
"	|canvas|
	canvas := Canvas newCanvas ."
	leftToolbar := LeftToolbar  new.
	^SpBoxLayout  newLeftToRight 
		add: leftToolbar width:50;
		add: SpTextPresenter new ;
	yourself.
	
	
]

{ #category : #initialization }
DoMELayout >> intializeMenu [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	menu := Menu new addTopMenu.



	

]

{ #category : #initialization }
DoMELayout >> intializeTopToolbar [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	topToolbar := TopToolbar new topToolBar.


]
