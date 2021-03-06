; RUN: llc %s -o %t -filetype=obj
; RUN: llvm-dwarfdump -debug-dump=line %t | FileCheck %s

; PR18809
; XFAIL: cygwin,mingw32

; Expect no line table entry since there are no functions and file references in this compile unit
; CHECK: .debug_line contents:
; CHECK-NOT: Line table prologue:

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5}

!0 = metadata !{i32 720913, metadata !4, i32 12, metadata !"clang version 3.1 (trunk 143523)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !2, null, metadata !""} ; [ DW_TAG_compile_unit ]
!2 = metadata !{}
!3 = metadata !{i32 786473, metadata !4} ; [ DW_TAG_file_type ]
!4 = metadata !{metadata !"empty.c", metadata !"/home/nlewycky"}
!5 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
