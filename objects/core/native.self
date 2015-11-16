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
         'Category: platform\x7fCategory: host and filesystem\x7fModuleInfo: Module: native InitialContents: FollowSlot\x7fVisibility: public'
        
         native = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> () From: ( |
             {} = 'Comment: I contain native code!
Run with care, here be dragons.
This is a replacement for hardcoded
primitives. It should be low level.\x7fModuleInfo: Creator: globals native.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: native InitialContents: FollowSlot'
        
         support = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> 'support' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals native support.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         cNativeParent = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals native support cNativeParent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         cCompile: c IfFail: fb = ( |
             f.
             fn.
             rawByteVector.
            | 
            os command: 'cc' IfFail: [^ fb value: 'C Compiler Not Found'].

            fn: os_file temporaryFileName.
            os command: 'rm ', fn, '.c'.
            os command: 'rm ', fn, '.o'.

            f: os_file openForWriting: fn, '.c'.
            f write: c.
            f close.

            os command: 'cc -O2 -ffreestanding -m32 -c -o ', fn, '.o ', fn, '.c'  IfFail: [|:e| error: e].

            f: os_file openForReading: fn, '.o'.
            rawByteVector: f read asByteVector.
            f close.

            rawByteVector: rawByteVector copyFrom: 16r100 UpTo: rawByteVector size. "Ignore header"
            rawByteVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         recompile = ( |
            | 
            compiled: cCompile: source IfFail: [|:e| error: e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         reload = ( |
             b.
            | 
            compiled isEmpty ifTrue: [recompile].
            nativeCode: fctProxy copy.
            nativeCode _AllocateBytes: compiled size.
            [nativeCode _GetSizeOfAllocatedMemory = compiled size] assert.
            nativeCode _LoadByteVector: compiled AtOffset: 0.
            b: byteVector copySize: nativeCode _GetSizeOfAllocatedMemory.
            nativeCode _ReadByteVector: b AtOffset: 0.
            [b = compiled] assert.
            nativeCode _NoOfArgs: arity.
            [nativeCode _NoOfArgs = arity] assert.
            [nativeCode isLive] assert.
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
            | cIntSize: 32 Signed: false At: 0 IfFail: [error: 'Bad Int']).
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



 '-- Side effects'

 globals modules native postFileIn
