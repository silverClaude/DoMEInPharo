Class {
	#name : #Menu,
	#superclass : #SpPresenter,
	#category : #DoMEInterface
}

{ #category : #adding }
Menu >> addEditButton [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	|button|		
	button := self newButton 
		label: 'edit';
		contextMenu: self addEditSubMenu;
		yourself.
	^button 
]

{ #category : #adding }
Menu >> addEditSubMenu [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	^ self newMenu
		addItem: [ :item | 
			item
				name: 'Undo';
				shortcut: $z meta;
				action: [ self inform: 'Undo' ] ];
		addItem: [ :item | 
			item
				name: 'Cut';
				shortcut: $x meta;
				action: [ self inform: 'Cut' ] ];
		addItem: [ :item | 
			item
				name: 'Copy';
				shortcut: $c meta;
				action: [ self inform: 'Copy' ] ];
		addItem: [ :item | 
			item
				name: 'Paste';
				shortcut: $v meta;
				action: [ self inform: 'Paste' ] ];
		addItem: [ :item | 
			item
				name: 'Delete';
				action: [ self inform: 'Delete' ] ];
		addItem: [ :item | 
			item
				name: 'Select All';
				shortcut: $a meta;
				action: [ self inform: 'Select All' ] ];
		addItem: [ :item | 
			item
				name: 'Find';
				shortcut: $f meta;
				action: [ self inform: 'Find' ] ];
		addItem: [ :item | 
			item
				name: 'Cut Subdiagram';
				action: [ self inform: 'Cut Subdiagram' ] ];
		addItem: [ :item | 
			item
				name: 'Color';
				action: [ self inform: 'Color' ] ];
		addItem: [ :item | 
			item
				name: 'Properties';
				shortcut: $i meta;
				action: [ self inform: 'Properties' ] ];
		addItem: [ :item | 
			item
				name: 'Short Name';
				action: [ self inform: 'Short Name' ] ];
		yourself
]

{ #category : #adding }
Menu >> addFileButton [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	|button|		
	button := self newButton
		label: 'file';
		contextMenu: self addFileSubMenu;
		yourself.
	^button 
]

{ #category : #adding }
Menu >> addFileSubMenu [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	^ self newMenu
		addItem: [ :item | 
			item
				name: 'New...';
				shortcut: $n meta;
				action: [ self inform: 'New...' ] ];
		addItem: [ :item | 
			item
				name: 'Open...';
				shortcut: $o meta;
				action: [ self inform: 'Open...' ] ];
		addItem: [ :item | 
			item
				name: 'Merge...';
			   action: [ self inform: 'Merge...' ] ];
		addItem: [ :item | 
			item
				name: 'Revert to Saved';
				action: [ self inform: 'Revert to Saved' ] ];
		addItem: [ :item | 
			item
				name: 'Save';
				shortcut: $s meta;
				action: [ self inform: 'Save' ] ];
		addItem: [ :item | 
			item
				name: 'Save As...';
				action: [ self inform: 'Save As...' ] ];
		addItem: [ :item | 
			item
				name: 'Print';
				shortcut: $p meta;
				action: [ self inform: 'Print' ] ];
		addItem: [ :item | 
			item
				name: 'Close';
				shortcut: $w meta;
				action: [ self inform: 'Close' ] ];
		addItem: [ :item | 
			item
				name: 'Close Model';
				action: [ self inform: 'Close Model' ] ];
		addItem: [ :item | 
			item
				name: 'Hide Model';
				action: [ self inform: 'Hide Model' ] ];
		yourself
]

{ #category : #testing }
Menu >> topMenuTest [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	|presenter|
   presenter := SpPresenter new.
   "Optionally, define an application for the presenter"
   presenter application: SpApplication new.
   presenter layout: SpPanedLayout newTopToBottom.
   presenter open.
   presenter layout add: self addFileButton .
   presenter layout add: self addEditButton .
]
