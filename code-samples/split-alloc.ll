; ModuleID = 'split-alloc.ll'
source_filename = "split-alloc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Book = type { [50 x i8], [50 x i8], [100 x i8], i32 }

@.str = private unnamed_addr constant [14 x i8] c"C Programming\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Nuha Ali\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"C Programming Tutorial\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"counter: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Big Bear\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Brown Bear\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Name: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [100 x %struct.Book*], align 16
  br label %2

2:                                                ; preds = %0, %2
  %indvars.iv42 = phi i64 [ 0, %0 ], [ %indvars.iv.next5, %2 ]
  %3 = tail call i8* @_ZN13AlexAllocator8allocateEv(i64 204) #3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 14, i1 false)
  %4 = getelementptr inbounds i8, i8* %3, i64 50
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 9, i1 false)
  %5 = getelementptr inbounds i8, i8* %3, i64 100
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %5, i8* align 1 getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 23, i1 false)
  %6 = getelementptr inbounds i8, i8* %3, i64 200
  %7 = bitcast i8* %6 to i32*
  store i32 6495407, i32* %7, align 4, !tbaa !2
  %8 = getelementptr inbounds [100 x %struct.Book*], [100 x %struct.Book*]* %1, i64 0, i64 %indvars.iv42
  %9 = bitcast %struct.Book** %8 to i8**
  store i8* %3, i8** %9, align 8, !tbaa !7
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv42, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 100
  br i1 %exitcond6, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %2
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 100)
  br label %11

11:                                               ; preds = %11, %.preheader.preheader
  %indvars.iv1 = phi i64 [ 99, %.preheader.preheader ], [ %indvars.iv.next, %11 ]
  %12 = getelementptr inbounds [100 x %struct.Book*], [100 x %struct.Book*]* %1, i64 0, i64 %indvars.iv1
  %13 = bitcast %struct.Book** %12 to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !7
  tail call void @_ZN13AlexAllocator10deallocateEv(i8* %14, i64 204) #3
  %indvars.iv.next = add nsw i64 %indvars.iv1, -1
  %15 = icmp eq i64 %indvars.iv1, 0
  br i1 %15, label %16, label %11

16:                                               ; preds = %11
  %17 = tail call i8* @_ZN13AlexAllocator8allocateEv(i64 50) #3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 9, i1 false)
  %18 = tail call i8* @_ZN13AlexAllocator8allocateEv(i64 50) #3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 11, i1 false)
  %19 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %18)
  %20 = tail call i8* @_ZN13AlexAllocator8allocateEv(i64 8) #3
  %21 = bitcast i8* %20 to i32*
  store i32 86, i32* %21, align 4, !tbaa !9
  tail call void @_ZN13AlexAllocator10deallocateEv(i8* %20, i64 4) #3
  tail call void @_ZN13AlexAllocator10deallocateEv(i8* %17, i64 50) #3
  tail call void @_ZN13AlexAllocator10deallocateEv(i8* %18, i64 50) #3
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

declare i8* @_ZN13AlexAllocator8allocateEv(i64) local_unnamed_addr

declare void @_ZN13AlexAllocator10deallocateEv(i8*, i64) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (git@github.com:scampanoni/LLVM_installer.git 713d2f6594d9a0b77e7f9a120aaa7c917715a640)"}
!2 = !{!3, !6, i64 200}
!3 = !{!"Book", !4, i64 0, !4, i64 50, !4, i64 100, !6, i64 200}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"int", !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!6, !6, i64 0}
