; ModuleID = 'binary-tree.ll'
source_filename = "../code-samples/binary-tree.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.node = type { %struct.node*, %struct.node* }
%struct.worker_args = type { i64, i64, i32, i64, %struct.worker_args* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"Wrong argument.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"stretch tree of depth %u\09 check: %li\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%ld\09 trees of depth %d\09 check: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"long lived tree of depth %d\09 check: %ld\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8, !tbaa !2
  %7 = call i32 @atoi(i8* %6) #6
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 24, %8 ]
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %14 = getelementptr [17 x i8], [17 x i8]* @.str, i64 0, i64 0
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* %14)
  call void @exit(i32 1) #7
  unreachable

16:                                               ; preds = %9
  %17 = add nsw i32 4, 2
  %18 = icmp sgt i32 %17, %10
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = add nsw i32 4, 2
  br label %22

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ %10, %21 ]
  %24 = add nsw i32 %23, 1
  %25 = call %struct.node* @bottom_up_tree(i32 %24)
  %26 = call i64 @item_check(%struct.node* %25)
  %27 = getelementptr [38 x i8], [38 x i8]* @.str.1, i64 0, i64 0
  %28 = call i32 (i8*, ...) @printf(i8* %27, i32 %24, i64 %26)
  call void @delete_tree(%struct.node* %25)
  %29 = call %struct.node* @bottom_up_tree(i32 %23)
  br label %30

30:                                               ; preds = %50, %22
  %.02 = phi %struct.worker_args* [ null, %22 ], [ %34, %50 ]
  %.01 = phi %struct.worker_args* [ null, %22 ], [ %.1, %50 ]
  %.0 = phi i32 [ 4, %22 ], [ %51, %50 ]
  %31 = icmp ule i32 %.0, %23
  br i1 %31, label %32, label %52

32:                                               ; preds = %30
  %33 = call noalias i8* @malloc(i64 40) #8
  %34 = bitcast i8* %33 to %struct.worker_args*
  %35 = sub nsw i32 %23, %.0
  %36 = add nsw i32 %35, 4
  %37 = shl i32 1, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %34, i32 0, i32 0
  store i64 %38, i64* %39, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %34, i32 0, i32 2
  store i32 %.0, i32* %40, align 8, !tbaa !10
  %41 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %34, i32 0, i32 4
  store %struct.worker_args* null, %struct.worker_args** %41, align 8, !tbaa !11
  %42 = icmp eq %struct.worker_args* %.02, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %46

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %.02, i32 0, i32 4
  store %struct.worker_args* %34, %struct.worker_args** %45, align 8, !tbaa !11
  br label %46

46:                                               ; preds = %44, %43
  %.1 = phi %struct.worker_args* [ %34, %43 ], [ %.01, %44 ]
  %47 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %34, i32 0, i32 3
  %48 = bitcast %struct.worker_args* %34 to i8*
  %49 = call i32 @pthread_create(i64* %47, %union.pthread_attr_t* null, i8* (i8*)* @check_tree_of_depth, i8* %48) #8
  br label %50

50:                                               ; preds = %46
  %51 = add nuw nsw i32 %.0, 2
  br label %30

52:                                               ; preds = %30
  %.01.lcssa = phi %struct.worker_args* [ %.01, %30 ]
  br label %53

53:                                               ; preds = %55, %52
  %.2 = phi %struct.worker_args* [ %.01.lcssa, %52 ], [ %68, %55 ]
  %54 = icmp ne %struct.worker_args* %.2, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %.2, i32 0, i32 3
  %57 = load i64, i64* %56, align 8, !tbaa !12
  %58 = call i32 @pthread_join(i64 %57, i8** null)
  %59 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %.2, i32 0, i32 0
  %60 = load i64, i64* %59, align 8, !tbaa !6
  %61 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %.2, i32 0, i32 2
  %62 = load i32, i32* %61, align 8, !tbaa !10
  %63 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %.2, i32 0, i32 1
  %64 = load i64, i64* %63, align 8, !tbaa !13
  %65 = getelementptr [36 x i8], [36 x i8]* @.str.2, i64 0, i64 0
  %66 = call i32 (i8*, ...) @printf(i8* %65, i64 %60, i32 %62, i64 %64)
  %67 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %.2, i32 0, i32 4
  %68 = load %struct.worker_args*, %struct.worker_args** %67, align 8, !tbaa !11
  %69 = bitcast %struct.worker_args* %.2 to i8*
  call void @free(i8* %69) #8
  br label %53

70:                                               ; preds = %53
  %71 = call i64 @item_check(%struct.node* %29)
  %72 = getelementptr [41 x i8], [41 x i8]* @.str.3, i64 0, i64 0
  %73 = call i32 (i8*, ...) @printf(i8* %72, i32 %23, i64 %71)
  call void @delete_tree(%struct.node* %29)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local i32 @atoi(i8* nonnull) #2 {
  %2 = call i64 @strtol(i8* %0, i8** null, i32 10) #8
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: nounwind uwtable
define internal %struct.node* @bottom_up_tree(i32) #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = sub nsw i32 %0, 1
  %5 = call %struct.node* @bottom_up_tree(i32 %4)
  %6 = sub nsw i32 %0, 1
  %7 = call %struct.node* @bottom_up_tree(i32 %6)
  %8 = call %struct.node* @new_node(%struct.node* %5, %struct.node* %7)
  br label %11

9:                                                ; preds = %1
  %10 = call %struct.node* @new_node(%struct.node* null, %struct.node* null)
  br label %11

11:                                               ; preds = %9, %3
  %.0 = phi %struct.node* [ %8, %3 ], [ %10, %9 ]
  ret %struct.node* %.0
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i64 @item_check(%struct.node*) #0 {
  %2 = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 0
  %3 = load %struct.node*, %struct.node** %2, align 8, !tbaa !14
  %4 = icmp eq %struct.node* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 0
  %8 = load %struct.node*, %struct.node** %7, align 8, !tbaa !14
  %9 = call i64 @item_check(%struct.node* %8)
  %10 = add nsw i64 1, %9
  %11 = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 1
  %12 = load %struct.node*, %struct.node** %11, align 8, !tbaa !16
  %13 = call i64 @item_check(%struct.node* %12)
  %14 = add nsw i64 %10, %13
  br label %15

15:                                               ; preds = %6, %5
  %.0 = phi i64 [ 1, %5 ], [ %14, %6 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal void @delete_tree(%struct.node*) #0 {
  %2 = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 0
  %3 = load %struct.node*, %struct.node** %2, align 8, !tbaa !14
  %4 = icmp ne %struct.node* %3, null
  br i1 %4, label %5, label %._crit_edge

._crit_edge:                                      ; preds = %1
  br label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 0
  %7 = load %struct.node*, %struct.node** %6, align 8, !tbaa !14
  call void @delete_tree(%struct.node* %7)
  %8 = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 1
  %9 = load %struct.node*, %struct.node** %8, align 8, !tbaa !16
  call void @delete_tree(%struct.node* %9)
  br label %10

10:                                               ; preds = %._crit_edge, %5
  %11 = bitcast %struct.node* %0 to i8*
  call void @free(i8* %11) #8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: nounwind
declare !callback !17 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #5

; Function Attrs: nounwind uwtable
define internal i8* @check_tree_of_depth(i8*) #0 {
  %2 = bitcast i8* %0 to %struct.worker_args*
  %3 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %2, i32 0, i32 2
  %6 = load i32, i32* %5, align 8, !tbaa !10
  %7 = sext i32 %6 to i64
  br label %8

8:                                                ; preds = %15, %1
  %.01 = phi i64 [ 1, %1 ], [ %16, %15 ]
  %.0 = phi i64 [ 0, %1 ], [ %14, %15 ]
  %9 = icmp sle i64 %.01, %4
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = trunc i64 %7 to i32
  %12 = call %struct.node* @bottom_up_tree(i32 %11)
  %13 = call i64 @item_check(%struct.node* %12)
  %14 = add nsw i64 %.0, %13
  call void @delete_tree(%struct.node* %12)
  br label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i64 %.01, 1
  br label %8

17:                                               ; preds = %8
  %.0.lcssa = phi i64 [ %.0, %8 ]
  %18 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %2, i32 0, i32 1
  store i64 %.0.lcssa, i64* %18, align 8, !tbaa !13
  ret i8* null
}

declare dso_local i32 @pthread_join(i64, i8**) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #5

; Function Attrs: nounwind uwtable
define internal %struct.node* @new_node(%struct.node*, %struct.node*) #0 {
  %3 = call noalias i8* @malloc(i64 16) #8
  %4 = bitcast i8* %3 to %struct.node*
  %5 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 0
  store %struct.node* %0, %struct.node** %5, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  store %struct.node* %1, %struct.node** %6, align 8, !tbaa !16
  ret %struct.node* %4
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { inlinehint nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (git@github.com:scampanoni/LLVM_installer.git 713d2f6594d9a0b77e7f9a120aaa7c917715a640)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 0}
!7 = !{!"worker_args", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 24, !3, i64 32}
!8 = !{!"long", !4, i64 0}
!9 = !{!"int", !4, i64 0}
!10 = !{!7, !9, i64 16}
!11 = !{!7, !3, i64 32}
!12 = !{!7, !8, i64 24}
!13 = !{!7, !8, i64 8}
!14 = !{!15, !3, i64 0}
!15 = !{!"node", !3, i64 0, !3, i64 8}
!16 = !{!15, !3, i64 8}
!17 = !{!18}
!18 = !{i64 2, i64 3, i1 false}
