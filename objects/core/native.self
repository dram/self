 '$Revision:$'
 '
Copyright 1992-2014 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
'
["preFileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         native = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'native' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'native' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules native.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'native' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'core'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'native' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'native' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'native' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
            resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'native' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'native' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: InitializeToExpression: (\'nativeExamples
\')\x7fVisibility: private'
        
         subpartNames <- 'nativeExamples
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: platform\x7fCategory: native code\x7fModuleInfo: Module: native InitialContents: FollowSlot\x7fVisibility: public'
        
         native = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> () From: ( |
             {} = 'Comment: I contain native code!
Run with care, here be dragons.
This is a replacement for hardcoded
primitives. It should be low level.\x7fModuleInfo: Creator: globals native.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'Category: external libraries\x7fModuleInfo: Module: native InitialContents: FollowSlot'
        
         proxyForFunction: s Library: l IfFail: fb = ( |
            | (proxyForLibrary: l IfFail: [^ fb value: 'Cannot find shared library']) lookupFunction: s IfFail: [^ fb value: 'Cannot find function']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'Category: external libraries\x7fModuleInfo: Module: native InitialContents: FollowSlot'
        
         proxyForLibrary: l IfFail: fb = ( |
            | 
            foreignCodeDB at: l IfFail: [^ fb value: 'Could not load library']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         recompileIfFail: fb = ( |
            | 
            compiled: byteVector copyRemoveAll.
            reloadIfFail: [|:e| ^  fb value: e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         reloadIfFail: fb = ( |
             b.
            | 
            compiled isEmpty ifTrue: [compiled: cCompile: source IfFail: [|:e| ^ fb value: e]].
            nativeCode: fctProxy copy.
            nativeCode _AllocateBytes: compiled size IfFail: [|:e| ^ fb value: 'Native Recompile Error: Couldn\'t allocate storage'].
            (nativeCode _GetSizeOfAllocatedMemory = compiled size) ifFalse: [|:e| ^ fb value: 'Native Recompile Error: Size error'].
            nativeCode _LoadByteVector: compiled AtOffset: 0 IfFail: [|:e| ^ fb value: 'Native Recompile Error: Couldn\'t load byteVector'].
            b: byteVector copySize: nativeCode _GetSizeOfAllocatedMemory.
            nativeCode _ReadByteVector: b AtOffset: 0.
            (b = compiled) ifFalse: [ ^ fb value: 'Native Recompile Error: Storage failed'].
            nativeCode _NoOfArgs: arity.
            (nativeCode _NoOfArgs = arity) ifFalse: [ ^ fb value: 'Native Recompile Error: Arity storage error'].
            (nativeCode isLive) ifFalse: [ ^ fb value: 'Native Recompile Error: Compiled code not live'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'byteVector' -> () From: ( | {
         'Category: native\x7fModuleInfo: Module: native InitialContents: FollowSlot'
        
         nativeTypeDescriptor = 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'byteVector' -> () From: ( | {
         'Category: C types\x7fCategory: Simple accessing for native\x7fModuleInfo: Module: native InitialContents: FollowSlot'
        
         readByte = ( |
            | cIntSize: 8 Signed: false At: 0 IfFail: [error: 'Bad Int']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'byteVector' -> () From: ( | {
         'Category: C types\x7fCategory: Simple accessing for native\x7fModuleInfo: Module: native InitialContents: FollowSlot'
        
         readInt32 = ( |
            | 
             cIntSize: 32 Signed: false At: 0 IfFail: [
            (65536 * cIntSize: 16 Signed: false At: 0) + (cIntSize: 16 Signed: false At: 2)]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'byteVector' -> () From: ( | {
         'Category: C types\x7fCategory: Simple accessing for native\x7fModuleInfo: Module: native InitialContents: FollowSlot'
        
         writeByte: b = ( |
            | cIntSize: 8 Signed: false At: 0 Put: b IfFail: [error: 'Bad Int']. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'byteVector' -> () From: ( | {
         'Category: C types\x7fCategory: Simple accessing for native\x7fModuleInfo: Module: native InitialContents: FollowSlot'
        
         writeInt32: i = ( |
            | cIntSize: 32 Signed: false At: 0 Put: i IfFail: [error: 'Bad Int']. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'proxy' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         nativeTypeDescriptor = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'proxy' -> () From: ( | {
         'Comment: For use in native framework.
Very dangerous - use with care.\x7fModuleInfo: Module: native InitialContents: FollowSlot\x7fVisibility: public'
        
         pointerInByteVector = ( |
             bv.
            | 
            bv: byteVector copySize: 4.
            _PointerInByteVector: bv.
            bv).
        } | ) 



 '-- Sub parts'

 bootstrap read: 'nativeExamples' From: 'core'
 bootstrap read: 'nativeLibSodium' From: 'core'



 '-- Side effects'

 globals modules native postFileIn
