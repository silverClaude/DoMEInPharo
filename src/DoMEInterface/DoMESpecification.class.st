Class {
	#name : #DoMESpecification,
	#superclass : #SpPresenter,
	#instVars : [
		'window',
		'scrollablePresenter',
		'list',
		'actionBar',
		'model'
	],
	#category : #DoMEInterface
}

{ #category : #adding }
DoMESpecification >> addActionBar [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	

	self initializeActionBar.
	^actionBar
]

{ #category : #adding }
DoMESpecification >> addFieldTo: aLayout [ 

	aLayout
		add: (self newLabel
				 label: 'Select Model Type:';
				 yourself)
		expand: false
		fill: false
		padding: 5.
	aLayout add: self addList.
	aLayout add: self addActionBar .

]

{ #category : #adding }
DoMESpecification >> addList [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	self initializeList .		
	^list
]

{ #category : #adding }
DoMESpecification >> defaultLayout [
	

	^ SpScrollableLayout with: scrollablePresenter

]

{ #category : #initialization }
DoMESpecification >> initializeActionBar [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	|domeLayout domeApp|	

	actionBar := self newActionBar
		add: (self newButton
			label: 'OK'; 
			icon: (self iconNamed: #smallOk);
			help: 'OK.';
			action: [ "UIManager default defer: [ self inform: 'New canvas' ];"
				model 
					ifNil:[UIManager default defer: [ self inform: 'Please select a model first!' ]]
					ifNotNil:[
						"UIManager default defer: [ self inform:model].""for test"
						domeLayout  := DoMELayout newModel: model.
						domeLayout open.
						"domeApp := DoMEApplication new.
						domeApp newPresenter: domeLayout.
						domeApp run."
						window close.
						]
				];
			yourself);
		add: (self newButton
			label: 'Cancel'; 
			icon: (self iconNamed: #smallCancel);
			help: 'Cancel.';
			action: [ "UIManager default defer: [ self inform: 'Cancel' ] "
				window close.];
			yourself);
		yourself.
]

{ #category : #initialization }
DoMESpecification >> initializeList [ 

	list := self newList.

	list 
		items: #('BPMN Diagram (BPMNGraph)' '2' '2' '2' '2' '2' '2' '2' '2' '2' '2' '2' '2' '2' '2' '2' '2' '2' '2' '2' );
		whenSelectionChangedDo: 
		[ :selection | 
		model  := selection selectedItem asString .
		] 
			
		


]

{ #category : #initialization }
DoMESpecification >> initializePresenters [ 

	| largeLayout |
	super initializePresenters.
	
	"We initialize the layout to a vertical box layout.
	Presenters will stack vertically."
	largeLayout := SpBoxLayout newTopToBottom.
	
	"For this demo, we add a lot of presenters (here, text fields.
	The idea is to fill the entire vertical space so that we need 
	to scroll up and down to see all the presenters."
	self addFieldTo: largeLayout.
	

	"To use a scroll layout, we need to embed our own layout into an intermediate presenter."
	scrollablePresenter := SpPresenter new.
	scrollablePresenter layout: largeLayout

]

{ #category : #adding }
DoMESpecification >> initializeWindow: aWindowPresenter [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	

		super 	initializeWindow: aWindowPresenter.
			
		aWindowPresenter
		title: '';
		initialExtent: self initialExtent;
		windowIcon: self windowIcon;
		centered.
		window := aWindowPresenter .

]
