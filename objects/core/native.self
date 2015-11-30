 '0.1.0'
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
         'ModuleInfo: Module: native InitialContents: InitializeToExpression: (\'0.1.0\')\x7fVisibility: public'
        
         revision <- '0.1.0'.
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: native InitialContents: FollowSlot'
        
         support = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> 'support' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals native support.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         buffer = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals native support buffer.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         char = bootstrap define: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'char' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals byteVector copySize_1 ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'char' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals native support buffer char.

CopyDowns:
globals byteVector. copySize_1 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'char' -> () _ByteAt: 0 Put: (
     0)

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'char' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'char' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals native support buffer char parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'char' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'byteVector' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'char' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         read = ( |
            | 
            cIntSize: 8 Signed: false At: 0 IfFail: [error: 'Bad Int']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'char' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         write: i IfFail: fb = ( |
            | 
            ((i > 255) || (i < 0)) ifTrue: [^ fb value: 'Value out of range']. 
            cIntSize: 8 Signed: false At: 0 Put: i IfFail: [error: 'Bad Int']. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'char' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         storeStringNeeds = ( |
            | native support buffer char).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         uint32 = bootstrap define: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'uint32' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals byteVector copySize_4 ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'uint32' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals native support buffer uint32.

CopyDowns:
globals byteVector. copySize_4 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'uint32' -> () _ByteAt: 0 Put: (
     0)

 bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'uint32' -> () _ByteAt: 1 Put: (
     0)

 bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'uint32' -> () _ByteAt: 2 Put: (
     0)

 bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'uint32' -> () _ByteAt: 3 Put: (
     0)

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'uint32' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'uint32' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals native support buffer uint32 parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'uint32' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'byteVector' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'uint32' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot\x7fVisibility: public'
        
         read = ( |
            | 
            cIntSize: 32 Signed: false At: 0 IfFail: [
            (65536 * cIntSize: 16 Signed: false At: 0) +
            (cIntSize: 16 Signed: false At: 2)]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'uint32' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         write: i IfFail: fb = ( |
            | 
            cIntSize: 32 Signed: false At: 0 Put: i IfFail: [error: 'Bad Int']. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> 'uint32' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         storeStringNeeds = ( |
            | native support buffer uint32).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         cNativeParent = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals native support cNativeParent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'Category: support\x7fComment: for easier access\x7fModuleInfo: Module: native InitialContents: FollowSlot'
        
         buffer = bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'buffer' -> ().
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         runNativeIfFail: fb = ( |
            | 
            nativeCode _RunNativeIfFail: [
              reloadIfFail: [^ fb value: e].
              nativeCode _RunNativeIfFail: [|:e | ^ fb value: e]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         runNativeReturning: b IfFail: fb = ( |
            | runNativeWith: b IfFail: fb. b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         runNativeReturning: a With: b IfFail: fb = ( |
            | runNativeWith: a With: b IfFail: fb. a).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         runNativeWith: a IfFail: fb = ( |
            | 
            nativeCode _RunNativeWith: a Type: a nativeTypeDescriptor IfFail: [
              reloadIfFail: [^ fb value: e].
              nativeCode _RunNativeWith: a Type: a nativeTypeDescriptor IfFail: [|:e | ^ fb value: e]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         runNativeWith: a With: b IfFail: fb = ( |
            | 
            nativeCode _RunNativeWith: a  Type: a nativeTypeDescriptor 
                                 With: b Type: b nativeTypeDescriptor
                               IfFail: [
                      reloadIfFail: [^ fb value: e].
                       nativeCode _RunNativeWith: a  Type: a nativeTypeDescriptor 
                                            With: b Type: b nativeTypeDescriptor
                                          IfFail: [|:e | ^ fb value: e]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'native' -> 'support' -> 'cNativeParent' -> () From: ( | {
         'ModuleInfo: Module: native InitialContents: FollowSlot'
        
         runNativeWith: a With: b With: c IfFail: fb = ( |
            | 
            nativeCode _RunNativeWith: a  Type: a nativeTypeDescriptor 
                                 With: b Type: b nativeTypeDescriptor
                                 With: c Type: c nativeTypeDescriptor
                               IfFail: [
                      reloadIfFail: [^ fb value: e].
                       nativeCode _RunNativeWith: a Type: a nativeTypeDescriptor 
                                            With: b Type: b nativeTypeDescriptor
                                            With: c Type: c nativeTypeDescriptor
                                          IfFail: [|:e | ^ fb value: e]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'byteVector' -> () From: ( | {
         'Category: native\x7fModuleInfo: Module: native InitialContents: FollowSlot'
        
         nativeTypeDescriptor = 0.
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
