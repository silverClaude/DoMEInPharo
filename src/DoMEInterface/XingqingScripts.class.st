Class {
	#name : #XingqingScripts,
	#superclass : #SpPresenter,
	#category : #DoMEInterface
}

{ #category : #layout }
XingqingScripts >> defaultLayout [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	

	^ SpBoxLayout newTopToBottom 
		add: self topToolBar  expand: false ;
		yourself
]

{ #category : #'as yet unclassified' }
XingqingScripts >> topToolBar [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| toolBar |
		toolBar := self newToolbar
		addItem: (SpToolbarButtonPresenter new
			label: 'Ok';
			icon: (self iconNamed: #smallOk);
			
			action: [ self inform: 'Ok' ];
			yourself);
		addItem: (SpToolbarButtonPresenter new
			label: 'Cancel';
			icon: (self iconNamed: #smallCancel);
			help: 'Cancel';
			action: [ self inform: 'Cancel' ];
			yourself);
		addItem: (SpToolbarButtonPresenter new
			label: 'Cancel';
			icon: (self iconNamed: #smallCancel);
			help: 'Cancel';
			action: [ self inform: 'Cancel' ];
			yourself);
		addItem: (SpToolbarButtonPresenter new
			label: 'Ok';
			icon: (self iconNamed: #smallOk);
			help: 'Ok';
			action: [ self inform: 'Ok' ];
			yourself);
		yourself.
		^toolBar 

]
