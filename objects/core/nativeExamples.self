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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'addChars' -> () From: ( | {
         'Comment: Add two chars together and return result\x7fModuleInfo: Module: nativeExamples InitialContents: FollowSlot\x7fVisibility: public'
        
         add: a And: b IfFail: fb = ( |
             left.
             result.
             right.
            | 
            left: (byteVector copySize: 1) writeByte: a.
            right: (byteVector copySize: 1) writeByte: b.
            nativeCode _RunNativeWith: left  Type: left nativeTypeDescriptor 
                                 With: right Type: right nativeTypeDescriptor
                               IfFail: [
                      reload.
                       nativeCode _RunNativeWith: left  Type: left nativeTypeDescriptor 
                                            With: right Type: right nativeTypeDescriptor
                                          IfFail: [|:e | ^ fb value: e]].
            left readByte).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'addChars' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         arity = 2.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'addChars' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: nativeExamples InitialContents: InitializeToExpression: (byteVector copy)'
        
         compiled <- byteVector copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'addChars' -> () From: ( | {
         'ModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'addChars' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         source = '
  char add(char, char);

  void fct(char *a, char *b){
    *a = add(*a, *b);
  }

  char add(char a, char b) {
    return a + b;
  }
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> () From: ( | {
         'Category: examples\x7fModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         helloWorld = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> 'helloWorld' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals native helloWorld.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'helloWorld' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         arity = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'helloWorld' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: nativeExamples InitialContents: InitializeToExpression: (byteVector copy)'
        
         compiled <- byteVector copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'helloWorld' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: nativeExamples InitialContents: InitializeToExpression: (fctProxy copy)'
        
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
            nativeCode _RunNativeWith: b Type: b nativeTypeDescriptor IfFail: [
              reload.
              nativeCode _RunNativeWith: b Type: b nativeTypeDescriptor IfFail: [|:e | ^ fb value: e]].
            b asString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'helloWorld' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
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
            | [valueIfFail: '' = 'Hello, World!'] assert. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> () From: ( | {
         'Category: examples\x7fModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         nothing <- bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> 'nothing' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals native nothing.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'nothing' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         arity = 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'nothing' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: nativeExamples InitialContents: InitializeToExpression: (byteVector copy)'
        
         compiled <- byteVector copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'nothing' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: nativeExamples InitialContents: InitializeToExpression: (fctProxy copy)'
        
         nativeCode <- fctProxy copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'nothing' -> () From: ( | {
         'ModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'nothing' -> () From: ( | {
         'ModuleInfo: Module: nativeExamples InitialContents: FollowSlot\x7fVisibility: public'
        
         safelyDoNothingIfFail: fb = ( |
            | 
            nativeCode _RunNativeIfFail: [
              reload.
              nativeCode _RunNativeIfFail: [|:e | ^ fb value: e]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'nothing' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: nativeExamples InitialContents: FollowSlot'
        
         source = '
  void fct(){2 + 2;}  
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'nothing' -> () From: ( | {
         'ModuleInfo: Module: nativeExamples InitialContents: FollowSlot\x7fVisibility: public'
        
         test = ( |
            | [safelyDoNothingIfFail: '' = self] assert. self).
        } | ) 



 '-- Side effects'

 globals modules nativeExamples postFileIn
