Class {
	#name : #TopToolbar,
	#superclass : #SpPresenter,
	#category : #DoMEInterface
}

{ #category : #layout }
TopToolbar >> defaultLayout [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	

	^ SpBoxLayout newTopToBottom 
		add: self topToolBar  expand: false ;
		yourself
]

{ #category : #'as yet unclassified' }
TopToolbar >> topToolBar [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| toolBar |
	
		toolBar := self newToolbar
		
		addItem: (SpToolbarButtonPresenter new
			label;
			icon: (self iconNamed: #smallPublishIcon);
			help: 'Next Graph';
			action: [ self inform: 'Next Graph' ];
			yourself);
		
		addItem: (SpToolbarButtonPresenter new
			label;
			icon: (self iconNamed: #smallOpen);
			help: 'Open Model From File';
			action: [ self inform: 'File' ];
			yourself);
			
		addItem: (SpToolbarButtonPresenter new
			label;
			icon: (self iconNamed: #smallSaveIcon);
			help: 'Save Model From File';
			action: [ self inform: 'Save' ];
			yourself);
			
		addItem: (SpToolbarButtonPresenter new
			label;
			icon: (self iconNamed: #smallPrintIcon);
			help: 'Print Model';
			action: [ self inform: 'Print' ];
			yourself);
					
		yourself.
		^toolBar 

]
