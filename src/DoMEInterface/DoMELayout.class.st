Class {
	#name : #DoMELayout,
	#superclass : #SpPresenter,
	#instVars : [
		'presenter',
		'menu',
		'topToolbar',
		'leftToolbar',
		'canvas'
	],
	#classVars : [
		'model'
	],
	#category : #DoMEInterface
}

{ #category : #'instance creation' }
DoMELayout class >> newModel: aString [
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"	
			
	 ^self new model:aString
]

{ #category : #'as yet unclassified' }
DoMELayout >> defaultLayout [
	

	"self initializeWindow: window."
	
	^ presenter 

]

{ #category : #'as yet unclassified' }
DoMELayout >> initializeCanvas [
	|canvasWithoutScrollbar|
	canvasWithoutScrollbar := SpBoxLayout newTopToBottom .
	canvasWithoutScrollbar add:SpTextPresenter new .
	
	^SpScrollableLayout with: canvasWithoutScrollbar  
	
	
]

{ #category : #'as yet unclassified' }
DoMELayout >> initializeMainLayout:modelType [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
"	|canvas|
	canvas := Canvas newCanvas ."
	"Transcript open.
	Transcript show: modelType ." 
	modelType = 'BPMN Diagram (BPMNGraph)' 
	ifTrue:[leftToolbar := LeftToolbar new.]
	ifFalse:[leftToolbar := LeftToolbar new."need change"
		UIManager default defer: [ self inform: 'undifined model interface' ].
	].
	
	canvas := self initializeCanvas .
	^SpBoxLayout  newLeftToRight 
		add: leftToolbar width:50;
		add: canvas ;
	yourself.
	
	
]

{ #category : #initialization }
DoMELayout >> initializeMenu [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	menu := Menu new addTopMenu.



	

]

{ #category : #initialization }
DoMELayout >> initializePresenters [ 
	|mainLayout|

	self initializeMenu .
	self initializeTopToolbar.
	
	"Transcript show: model ."
	mainLayout := self initializeMainLayout:model.
	presenter := SpBoxLayout newTopToBottom   
		add:menu
		"expand:false"
		height:20;
		add: topToolbar 
		"expand: false"
		height:20;
		add: mainLayout  ;"need change"
	yourself.

]

{ #category : #initialization }
DoMELayout >> initializeTitle: aString [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	^aString
]

{ #category : #initialization }
DoMELayout >> initializeTopToolbar [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	topToolbar := TopToolbar new topToolBar.


]

{ #category : #initialization }
DoMELayout >> initializeWindow: aWindowPresenter [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	

		super 	initializeWindow: aWindowPresenter.
			
		aWindowPresenter
		title: 'DoME';
		initialExtent: "self initialExtent" 800@600;
		windowIcon: self windowIcon;
		centered.
		"openWithLayout: presenter."
		
		
]

{ #category : #'as yet unclassified' }
DoMELayout >> intializeMainLayout [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
"	|canvas|
	canvas := Canvas newCanvas ."
	leftToolbar := LeftToolbar new.
	canvas := self initializeCanvas .
	^SpBoxLayout  newLeftToRight 
		add: leftToolbar width:50;
		add: canvas ;
	yourself.
	
	
]

{ #category : #initialization }
DoMELayout >> model: aString [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	model := aString.

]
