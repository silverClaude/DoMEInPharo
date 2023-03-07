Class {
	#name : #LeftToolbar,
	#superclass : #SpPresenter,
	#category : #DoMEInterface
}

{ #category : #layout }
LeftToolbar >> defaultLayout [

 |leftToolbarLayout|
 leftToolbarLayout:= SpBoxLayout newTopToBottom
  add: self selectMove  expand: false;
  add: self note  expand: false;
  add: self graph  expand: false;
  add: self genSpec  expand: false;
   yourself.

 ^ SpBoxLayout newTopToBottom
   add: leftToolbarLayout ;
   yourself
]

{ #category : #layout }
LeftToolbar >> genSpec [
 "comment stating purpose of instance-side method"
 "scope: class-variables  &  instance-variables"
|genSpec|
genSpec := self newToolbar
  addItem: (SpToolbarButtonPresenter new
   label;
   icon: ((self iconNamed: #glamorousUp  )scaledToSize: 20 @ 20  );
   help: 'GenSpec';
   action: [ self inform: 'GenSpec' ];
   yourself);
  yourself.
  ^genSpec
]

{ #category : #layout }
LeftToolbar >> graph [
 "comment stating purpose of instance-side method"
 "scope: class-variables  &  instance-variables"
|graph|
graph := self newToolbar
  addItem: (SpToolbarButtonPresenter new
   label;
   icon: ((self iconNamed: #smallRightFlushIcon)scaledToSize: 20 @ 20  );
   help: 'graph';
   action: [ self inform: 'graph' ];
   yourself);
  yourself.
  ^graph
]

{ #category : #layout }
LeftToolbar >> note [
 "comment stating purpose of instance-side method"
 "scope: class-variables  &  instance-variables"
|note|
note := self newToolbar
  addItem: (SpToolbarButtonPresenter new
   label;
   icon: ((self iconNamed: #solidMenuIcon  ) scaledToSize: 20 @ 20  );
   help: 'Note';
   action: [ self inform: 'Note' ];
   yourself);
  yourself.
  ^note
]

{ #category : #'as yet unclassified' }
LeftToolbar >> selectMove [
 "comment stating purpose of instance-side method"
 "scope: class-variables  &  instance-variables"
|selectMove|
selectMove := self newToolbar
  addItem: (SpToolbarButtonPresenter new
   label;
   icon: ((self iconNamed: #edit   )scaledToSize: 20 @ 20  );
   help: 'Select/Move';
   action: [ self inform: 'Select/Move' ];
   yourself);
  yourself.
  ^selectMove
]
