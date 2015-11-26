 '$Revision:$'
 '
Copyright 1992-2014 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
'
["preFileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         nativeExamples = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'nativeExamples' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'nativeExamples' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules nativeExamples.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'nativeExamples' -> () From: ( | {
         'ModuleInfo: Module: nativeExamples InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'core'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'nativeExamples' -> () From: ( | {
         'ModuleInfo: Module: nativeExamples InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'nativeExamples' -> () From: ( | {
         'ModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'nativeExamples' -> () From: ( | {
         'ModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'nativeExamples' -> () From: ( | {
         'ModuleInfo: Module: nativeExamples InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'nativeExamples' -> () From: ( | {
         'ModuleInfo: Module: nativeExamples InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> () From: ( | {
         'Category: examples\x7fModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         addChars = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> 'addChars' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals native addChars.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> () From: ( | {
         'Category: examples\x7fModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         helloWorld = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> 'helloWorld' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals native helloWorld.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'helloWorld' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         arity = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'helloWorld' -> () From: ( | {
         'Category: caches\x7fModuleInfo: Module: nativeExamples InitialContents: InitializeToExpression: (byteVector copy)'
        
         compiled <- byteVector copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'helloWorld' -> () From: ( | {
         'Category: caches\x7fModuleInfo: Module: nativeExamples InitialContents: InitializeToExpression: (fctProxy copy)'
        
         nativeCode <- fctProxy copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: nativeExamples InitialContents: FollowSlot\x7fVisibility: public'
        
         returnHelloWorldIfFail: fb = ( |
             b.
            | 
            b: byteVector copySize: 13.
            runNativeWith: b IfFail: [|:e| ^ fb value: e].
            b asString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'helloWorld' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         source = '
  void fct(char*a, ... ){
    char* hw = \"Hello, World!\";
    int i;
    for(i = 0; i < 13; i++){
      a[i] = hw[i];
    } 
  }  
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: nativeExamples InitialContents: FollowSlot\x7fVisibility: public'
        
         test = ( |
            | 
            [(returnHelloWorldIfFail: '') = 'Hello, World!'] assert. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> () From: ( | {
         'Category: examples\x7fModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         nothing = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> 'nothing' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals native nothing.
'.
            | ) .
        } | ) 



 '-- Side effects'

 globals modules nativeExamples postFileIn
