Class {
	#name : #DoMESpecification,
	#superclass : #SpPresenter,
	#instVars : [
		'scrollablePresenter',
		'list'
	],
	#category : #DoMEInterface
}

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
DoMESpecification >> initializeList [ 

	list := self newList.

	list 
		items: #('1' '2').

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
